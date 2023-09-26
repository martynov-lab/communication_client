import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: const Text(
            'Политика конфиденциальности',
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorApp.textColorDarkGrey,
              fontSize: 10,
              fontFamily: Font.inter,
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: () {
            // Navigator.push(context,
            //     SizeRoute(page: const PrivacyPolicy())); //PrivacyPolicy
          },
        ),
        GestureDetector(
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(CustomIcon.askQuestion),
              ),
              Text(
                'Помощь',
                //textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorApp.textColorDarkGrey,
                  fontSize: 10,
                  fontFamily: Font.inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          onTap: () {
            showTopSnackBar(
              context,
              CustomSnackBar.info(
                message:
                    'Страница для связи с техподдержкой находится в разработкe',
                button: GestureDetector(
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onTap: () => localAnimationController.reverse(),
                ),
              ),
              displayDuration: const Duration(milliseconds: 200),
              //persistent: true,
              onAnimationControllerInit: (controller) =>
                  localAnimationController = controller,
            );
          },
        ),
      ],
    );
  }
}
