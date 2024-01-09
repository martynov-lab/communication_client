import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final String label;
  final String value;
  const CardProfile({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10.5,
        bottom: 10.5,
      ),
      decoration: const BoxDecoration(
          color: ColorApp.cardLight,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: ColorApp.backgroundIcon2,
                fontFamily: Font.inter,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: const TextStyle(
                color: ColorApp.textBodyDark,
                fontFamily: Font.inter,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
    );
  }
}
