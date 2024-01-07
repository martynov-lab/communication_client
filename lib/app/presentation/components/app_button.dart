import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgoundColor;
  final bool isActive;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isActive = true,
    this.backgoundColor = const Color.fromARGB(255, 93, 134, 239),
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          foregroundColor: isActive
              ? const Color.fromARGB(255, 93, 134, 239)
              : const Color.fromRGBO(165, 175, 233, 0.7),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: const TextStyle(color: Colors.white),
        ),
        onPressed: isActive ? onPressed : null,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: ColorApp.backgroundLight),
        ),
      );
}
