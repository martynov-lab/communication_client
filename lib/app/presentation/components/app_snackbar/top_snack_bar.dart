import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/tap_bounce_container.dart';
import 'package:flutter/material.dart';

part 'custom_snackbar.dart';

typedef ControllerCallback = void Function(AnimationController);

OverlayEntry? _previousEntry;

late AnimationController localAnimationController;

void showSuccessSnackBar(BuildContext context, String message) {
  showTopSnackBar(
    context,
    CustomSnackBar.success(
      message: message,
      button: GestureDetector(
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        onTap: () => localAnimationController.reverse(),
      ),
    ),
    //persistent: true,
    onAnimationControllerInit: (controller) =>
        localAnimationController = controller,
  );
}

void showErrorSnackBar(BuildContext context, ErrorEntity error) {
  showTopSnackBar(
    context,
    CustomSnackBar.error(
      message: "Error: ${error.errorMessage}, Message: ${error.message}",
      button: GestureDetector(
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        onTap: () => localAnimationController.reverse(),
      ),
    ),
    //persistent: true,
    onAnimationControllerInit: (controller) =>
        localAnimationController = controller,
  );
}

void showInfoSnackBar(BuildContext context, String message) {
  showTopSnackBar(
    context,
    CustomSnackBar.info(
      message: message,
      button: GestureDetector(
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        onTap: () => localAnimationController.reverse(),
      ),
    ),
    //persistent: true,
    onAnimationControllerInit: (controller) =>
        localAnimationController = controller,
  );
}

void showTopSnackBar(
  BuildContext context,
  Widget child, {
  Duration animationDuration = const Duration(milliseconds: 1200),
  Duration reverseAnimationDuration = const Duration(milliseconds: 550),
  Duration displayDuration = const Duration(milliseconds: 3000),
  VoidCallback? onTap,
  OverlayState? overlayState,
  bool persistent = false,
  ControllerCallback? onAnimationControllerInit,
  EdgeInsets padding = const EdgeInsets.all(0),
  Curve curve = Curves.elasticOut,
  Curve reverseCurve = Curves.linearToEaseOut,
}) async {
  overlayState ??= Overlay.of(context);
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (context) {
      return TopSnackBar(
        child: child,
        onDismissed: () {
          if (overlayEntry.mounted && _previousEntry == overlayEntry) {
            overlayEntry.remove();
            _previousEntry = null;
          }
        },
        animationDuration: animationDuration,
        reverseAnimationDuration: reverseAnimationDuration,
        displayDuration: displayDuration,
        onTap: onTap,
        persistent: persistent,
        onAnimationControllerInit: onAnimationControllerInit,
        padding: padding,
        curve: curve,
        reverseCurve: reverseCurve,
      );
    },
  );

  if (_previousEntry != null && _previousEntry!.mounted) {
    _previousEntry?.remove();
  }
  overlayState.insert(overlayEntry);
  _previousEntry = overlayEntry;
}

/// Widget that controls all animations
class TopSnackBar extends StatefulWidget {
  final Widget child;
  final VoidCallback onDismissed;
  final Duration animationDuration;
  final Duration reverseAnimationDuration;
  final Duration displayDuration;
  final VoidCallback? onTap;
  final ControllerCallback? onAnimationControllerInit;
  final bool persistent;
  final EdgeInsets padding;
  final Curve curve;
  final Curve reverseCurve;

  TopSnackBar({
    Key? key,
    required this.child,
    required this.onDismissed,
    required this.animationDuration,
    required this.reverseAnimationDuration,
    required this.displayDuration,
    this.onTap,
    this.persistent = false,
    this.onAnimationControllerInit,
    required this.padding,
    required this.curve,
    required this.reverseCurve,
  }) : super(key: key);

  @override
  _TopSnackBarState createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<TopSnackBar>
    with SingleTickerProviderStateMixin {
  late Animation offsetAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    _setupAndStartAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _setupAndStartAnimation() async {
    animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
      reverseDuration: widget.reverseAnimationDuration,
    );

    widget.onAnimationControllerInit?.call(animationController);

    var offsetTween = Tween<Offset>(
      begin: Offset(0.0, -1.0),
      end: Offset(0.0, -0.5),
    );

    offsetAnimation = offsetTween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: widget.curve,
        reverseCurve: widget.reverseCurve,
      ),
    )..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          if (!widget.persistent) {
            await Future.delayed(widget.displayDuration);
            _dismiss();
          }
        }

        if (status == AnimationStatus.dismissed) {
          if (mounted) {
            widget.onDismissed.call();
          }
        }
      });

    if (mounted) {
      animationController.forward();
    }
  }

  void _dismiss() {
    if (mounted) {
      animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.padding.top,
      left: widget.padding.left,
      right: widget.padding.right,
      child: SlideTransition(
        position: offsetAnimation as Animation<Offset>,
        child: SafeArea(
          child: TapBounceContainer(
            onTap: () {
              if (mounted) {
                widget.onTap?.call();
                if (!widget.persistent) {
                  animationController.reverse();
                }
              }
            },
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
