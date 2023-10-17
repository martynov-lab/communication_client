import 'package:flutter/material.dart';

mixin OverlayStateMixin<T extends StatefulWidget> on State<T> {
  // Adds a single private nullable variable OverlayEntry. You’ll use this variable to manage the overlay entries. In this mixin, you’ll only manage one overlay.
  OverlayEntry? _overlayEntry;

  // A void function named removeOverlay that removes the overlayEntry by calling _overlayEntry?.remove() function assigned in the OverlayEntry before setting it to null.
  void removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  // _dismissibleOverlay is a private function that allows for calling removeOverlay() when clicking outside the child boundaries.
  Widget _dismissibleOverlay(Widget child) => Stack(
        children: [
          Positioned.fill(
            child: ColoredBox(
              color: Colors.black.withOpacity(.3),
              child: GestureDetector(
                onTap: removeOverlay,
              ),
            ),
          ),
          child,
        ],
      );

  // A private function you use to display a Widget as an overlay.
  void _insertOverlay(Widget child) {
    // You assign OverlayEntry with the dismissable child.
    _overlayEntry = OverlayEntry(
      builder: (_) => _dismissibleOverlay(child),
    );

    // Overlay.of(context) yields OverlayState object which you use to insert your newly assigned OverlayEntry object.
    Overlay.of(context).insert(_overlayEntry!);
  }

  //Implement a getter method to check if the OverlayEntry is visible by checking if it was not null.
  bool get isOverlayShown => _overlayEntry != null;

  //Expose a public function to toggle viewing the single _overlayEntry.
  void toggleOverlay(Widget child) =>
      isOverlayShown ? removeOverlay() : _insertOverlay(child);

  @override
  void dispose() {
    removeOverlay();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    removeOverlay();
    super.didChangeDependencies();
  }
}
