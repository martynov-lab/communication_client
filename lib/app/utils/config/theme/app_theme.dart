// All custom application theme
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  // Default application theme
  final ThemeData _themeLight = ThemeData.light();
  final ThemeData _themeDark = ThemeData.dark();

  ThemeData get themeLight => _themeLight.copyWith(
        primaryColor: ColorApp.backgroundLight,
        primaryColorDark: ColorApp.textButton,
        indicatorColor: ColorApp.progressBarInterPinDotLight,
        brightness: Brightness.light,
        disabledColor: ColorApp.chipsBackgroundLight,
        scaffoldBackgroundColor: ColorApp.backgroundLight,

        //buttonColor: ColorApp.dotWelcomScreen,

        iconTheme: const IconThemeData(
          color: ColorApp.grey,
        ),

        buttonTheme: const ButtonThemeData(
          buttonColor: ColorApp.blueButton,
          disabledColor: ColorApp.notActiveButton,
        ),
        //primaryColorDark: ColorApp.backgroundLight,
        //primaryColorLight: ColorApp.backgroundLight,

        //! цвет circularProgressIndicator
        //colorScheme: ColorScheme.light(primary: Colors.black54),

        colorScheme: ColorScheme.fromSwatch(
            //primarySwatch: Colors.indigo,
            //accentColor: ColorApp.yellowButton,
            ),
        //! цвет фона AlertDialog
        dialogBackgroundColor: ColorApp.backgroundLight,
        //! Chip
        chipTheme: ChipThemeData(
          backgroundColor: ColorApp.chipsBackgroundLight,
          disabledColor: ColorApp.chipsBackgroundLight,
          selectedColor: ColorApp.chipsSelected,
          secondarySelectedColor: ColorApp.chipsSelected,
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          showCheckmark: false,
          labelStyle: const TextStyle(
              letterSpacing: -0.3,
              color: ColorApp.chipsText,
              fontFamily: Font.inter,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          secondaryLabelStyle: const TextStyle(
              color: ColorApp.chipsTextSelected,
              fontFamily: Font.inter,
              fontSize: 14,
              fontWeight: FontWeight.w500),
          brightness: Brightness.light,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        //! TextTheme
        textTheme: _textLight(_themeLight.textTheme),
        //! AppBar
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            //systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: ColorApp.backgroundIcon,
          ),
          iconTheme: IconThemeData(
            color: ColorApp.backgroundIcon,
          ),
        ),
        //! textField
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: ColorApp.borderFocuse, //темная такая же
              width: 1.3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: ColorApp.grey, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: ColorApp.error, //темная такая же
              width: 1.3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: ColorApp.error, //темная такая же
              width: 1,
            ),
          ),
          errorStyle: TextStyle(
              fontFamily: Font.inter,
              color: ColorApp.error,
              fontSize: 16,
              letterSpacing: 0),
          hintStyle: TextStyle(
              fontFamily: Font.inter,
              color: ColorApp.grey,
              fontSize: 16,
              letterSpacing: 0),
          labelStyle: TextStyle(
              color: ColorApp.backgroundIcon2,
              fontSize: 16,
              fontFamily: Font.inter,
              letterSpacing: 0),
          fillColor: ColorApp.fillColorLight,
          suffixIconColor: ColorApp.grey,
          suffixStyle: TextStyle(
            fontFamily: Font.inter,
            color: ColorApp.grey,
          ),
          prefixIconColor: ColorApp.grey,
          prefixStyle: TextStyle(
            fontFamily: Font.inter,
            fontSize: 16,
            color: ColorApp.labelLight,
          ),
        ),
        //! Card
        cardTheme: CardTheme(
          color: Colors.indigo[100],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          margin: const EdgeInsets.all(15),
          clipBehavior: Clip.antiAliasWithSaveLayer,
        ),
        //! BottomNavigationBar
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: Colors.black54,
        //   selectedItemColor: Colors.indigo[100],
        //   showSelectedLabels: true,
        // ),
        //! ElevatedButton
        //! ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            minimumSize: const Size.fromHeight(55),
            elevation: 0,
            primary: ColorApp.blueButton,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0)),
            onPrimary: ColorApp.textButton,
            textStyle: const TextStyle(
                color: ColorApp.textButton,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: Font.inter),
          ),
        ),
      );

  ThemeData get themeDark => _themeDark.copyWith(
        primaryColor: ColorApp.backgroundDark,
        primaryColorDark: ColorApp.backgroundYellowStain,
        disabledColor: ColorApp.fillColorDark,
        //buttonColor: ColorApp.dotWelcomScreenDark,

        indicatorColor: ColorApp.progressBarInterPinDot,
        brightness: Brightness.dark,
        //! Icon
        iconTheme: const IconThemeData(
          color: ColorApp.backgroundLight,
        ),
        //! AppBar
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            //systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: ColorApp.backgroundLight,
          ),
          iconTheme: IconThemeData(
            color: ColorApp.backgroundLight,
          ),
        ),
        //! Button
        buttonTheme: const ButtonThemeData(
          buttonColor: ColorApp.blueButton,
          disabledColor: ColorApp.notActiveButtonDark,
        ),
        //! Chip
        chipTheme: ChipThemeData(
          backgroundColor: ColorApp.chipsBackgroundDark,
          disabledColor: ColorApp.chipsBackgroundDark,
          selectedColor: ColorApp.chipsSelected,
          secondarySelectedColor: ColorApp.chipsSelected,
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          showCheckmark: false,
          labelStyle: const TextStyle(
              letterSpacing: -0.3,
              color: ColorApp.chipsText,
              fontFamily: Font.inter,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          secondaryLabelStyle: const TextStyle(
              color: ColorApp.chipsTextSelected,
              fontFamily: Font.inter,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          brightness: Brightness.dark,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        //! textField
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: ColorApp.borderFocuse, //темная такая же
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(
              color: ColorApp.error, //темная такая же
              width: 1,
            ),
          ),
          hintStyle: TextStyle(
              fontFamily: Font.inter,
              color: ColorApp.inputLabel,
              fontSize: 16,
              letterSpacing: 0),
          labelStyle: TextStyle(
            fontFamily: Font.inter,
            color: ColorApp.labelDark,
            fontSize: 16,
          ),
          fillColor: ColorApp.fillColorDark,
          suffixIconColor: ColorApp.inputSuffixDark,
          suffixStyle: TextStyle(
            fontFamily: Font.inter,
            color: ColorApp.inputSuffixDark,
          ),
          prefixIconColor: ColorApp.inputSuffixDark,
          prefixStyle: TextStyle(
            fontFamily: Font.inter,
            fontSize: 16,
            color: ColorApp.labelDark,
          ),
        ),

        //! TextTheme
        textTheme: _textDark(_themeDark.textTheme),
      );
}

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    //for the text of the Skip button
    headline6: base.headline6!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.title,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.title,
      fontSize: 25,
      fontWeight: FontWeight.w300,
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.title,
      fontSize: 28,
      fontWeight: FontWeight.w300,
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.numberInterPin,
      fontSize: 30,
      fontWeight: FontWeight.w300,
    ),
    //for the label before the TextButton
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyDark,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    //for the text of the 'Choose your region' button
    labelMedium: base.labelMedium!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textButton,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),

    //for button text with yellow background
    button: base.button!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textButton,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    //for the text of the TextButton
    caption: base.caption!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.title,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyLight,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyDark,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextTheme _textDark(TextTheme base) {
  return base.copyWith(
    //for the text of the Skip button
    headline6: base.headline6!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyLight,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.backgroundLight,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.backgroundLight,
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.backgroundLight,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    ),
    //for the label before the TextButton
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.subTitle,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    //for the text of the 'Choose your region' button
    labelMedium: base.labelMedium!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.backgroundLight,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),

    //for button text with yellow background
    button: base.button!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyDark,
      fontSize: 16,
    ),
    //for the text of the TextButton
    caption: base.caption!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.blueButton,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyLight,
      fontSize: 12,
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: Font.inter,
      color: ColorApp.textBodyLight,
      fontSize: 12,
    ),
  );
}
