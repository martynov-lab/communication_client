import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final Widget? narrow;
  final Widget? wide;
  final Widget? ultraWide;
  final Widget? other;

  const AdaptiveWidget(
      {Key? key, this.narrow, this.wide, this.ultraWide, this.other})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1920 && ultraWide != null) {
      return ultraWide!;
    }
    if (width >= 450 && width < 1920 && wide != null) {
      return wide!;
    }
    if (width < 450 && narrow != null) {
      return narrow!;
    }

    throw Exception('Can not match layout');
  }
}
