import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ButtonRoom extends StatelessWidget {
  final Function action;
  final Icon icon;
  final Color color;
  final double diameter;
  final bool isActive;
  final List<BoxShadow>? shadow;

  const ButtonRoom({
    Key? key,
    required this.action,
    required this.icon,
    required this.color,
    required this.diameter,
    required this.isActive,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: diameter,
        width: diameter,
        decoration: BoxDecoration(
          color: isActive ? color : ColorApp.roomNotActiveButton,
          borderRadius: BorderRadius.circular(diameter / 2),
          border: Border.all(
            color: isActive ? Colors.transparent : ColorApp.roomNotActiveBorder,
            width: 1,
          ),
          boxShadow: shadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 0,
          ),
          child: icon,
        ),
      ),
      onTap: () {
        action();
      },
    );
  }
}
