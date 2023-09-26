import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

// contains all dialog templates
class AppDialog {
  static Future openDialog({
    required BuildContext context,
    required String titile,
    required String message,
    required String textButtomCencel,
    required String textButtomOK,
    required Function functionCencel,
    required Function functionOK,
  }) =>
      showDialog(
          context: context,
          builder: (contextB) => AlertDialog(
                title: Text(titile),
                titleTextStyle: const TextStyle(
                    fontFamily: Font.inter,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                content: Text(message),
                contentTextStyle: const TextStyle(
                    fontFamily: Font.inter,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
                actions: [
                  TextButton(
                    onPressed: () {
                      functionCencel();
                    },
                    child: Text(textButtomCencel),
                  ),
                  TextButton(
                    onPressed: () {
                      functionOK();
                    },
                    child: Text(textButtomOK),
                  )
                ],
              ));
}
