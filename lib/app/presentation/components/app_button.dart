import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgoundColor;
  final bool isActive;

  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isActive = true,
    this.backgoundColor = const Color.fromARGB(255, 93, 134, 239),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgoundColor),
          fixedSize: MaterialStateProperty.all<Size>(
            const Size(
              double.maxFinite,
              55,
            ),
          ),
        ),

        // ElevatedButton.styleFrom(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(8.0),
        //   ),
        //   primary: isActive
        //       ? const Color.fromARGB(255, 93, 134, 239)
        //       : const Color.fromRGBO(165, 175, 233, 0.7),
        //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //   textStyle: const TextStyle(color: Colors.white),
        // ),

        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      );
}
