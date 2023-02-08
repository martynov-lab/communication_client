part of 'top_snack_bar.dart';

//use
// showTopSnackBar(
//         context,
//         CustomSnackBar.error(
//           message: state.error,
//           button: GestureDetector(
//             child: const Icon(
//               Icons.close,
//               color: Colors.white,
//             ),
//             onTap: () => localAnimationController.reverse(),
//           ),
//         ),
//         //persistent: true,
//         onAnimationControllerInit: (controller) =>
//             localAnimationController = controller,
//       );

class CustomSnackBar extends StatefulWidget {
  final String message;
  final Widget icon;
  final Widget button;
  final Color backgroundColor;
  final TextStyle textStyle;
  final int maxLines;
  final int iconRotationAngle;
  final List<BoxShadow> boxShadow;
  final BorderRadius borderRadius;
  final double iconPositionTop;
  final double iconPositionLeft;
  final EdgeInsetsGeometry messagePadding;
  final double textScaleFactor;

  const CustomSnackBar.success({
    Key? key,
    required this.message,
    this.button = const SizedBox(),
    this.messagePadding =
        const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
    this.icon = const Icon(
      Icons.sentiment_very_satisfied,
      color: Color(0x15000000),
      size: 200,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      // fontFamily: Font.sfText,
      fontSize: 18,
      color: Colors.white,
    ),
    this.maxLines = 2,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = Colors.green,
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  const CustomSnackBar.info({
    Key? key,
    required this.message,
    this.button = const SizedBox(),
    this.messagePadding =
        const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
    this.icon = const Icon(
      Icons.sentiment_neutral,
      color: Color(0x15000000),
      size: 200,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      // fontFamily: Font.sfText,
      fontSize: 18,
      color: Colors.white,
    ),
    this.maxLines = 2,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = Colors.blue,
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  const CustomSnackBar.error({
    Key? key,
    required this.message,
    this.button = const SizedBox(),
    this.messagePadding =
        const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
    this.icon = const Icon(
      Icons.error_outline,
      color: Color(0x15000000),
      size: 200,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      // fontFamily: Font.sfText,
      fontSize: 18,
      color: Colors.white,
    ),
    this.maxLines = 3,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = Colors.red,
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  @override
  _CustomSnackBarState createState() => _CustomSnackBarState();
}

class _CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      height: widget.message.length > 30 ? 220 : 160,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
        boxShadow: widget.boxShadow,
      ),
      width: double.infinity,
      child:
          // Stack(
          //   children: [
          // Positioned(
          //   top: widget.iconPositionTop,
          //   left: widget.iconPositionLeft,
          //   child: Container(
          //     height: 95,
          //     child: Transform.rotate(
          //       angle: widget.iconRotationAngle * pi / 180,
          //       child: widget.icon,
          //     ),
          //   ),
          // ),
          Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: widget.messagePadding,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.message,
                  style: theme.textTheme.bodyText2?.merge(
                    widget.textStyle,
                  ),
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: widget.maxLines,
                  textScaleFactor: widget.textScaleFactor,
                ),
              ),
              widget.button,
            ],
          ),
        ),
        // ),
        //  ],
      ),
    );
  }
}

const kDefaultBoxShadow = [
  BoxShadow(
    color: Colors.black26,
    offset: Offset(0.0, 8.0),
    spreadRadius: 1,
    blurRadius: 30,
  ),
];

const kDefaultBorderRadius = BorderRadius.all(Radius.circular(0));
