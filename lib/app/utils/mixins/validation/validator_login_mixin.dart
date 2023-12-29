import 'package:communication_client/app/utils/mixins/validation/regex.dart';

mixin class ValidatorLoginMixin {
  final String _starWithLetter = 'Первый символ должен быть буквенный';
  final String _empty = 'Обязательное поле для ввода';
  final String _less3Char = 'Должно быть не меньше 3 сиволов';
  final String _more64Char = 'Вы ввели слишком много символов';
  final String _validCharPassword =
      'Пароль должен состоять только из букв и цифр';
  final String _validEmailPassword = 'Вы ввели не email';

  String? validateEmail(String? value) {
    if (value == null) {
      return null;
    }
    if (!RegExValid.beginsWithLetterRegExp.hasMatch(value) &&
        value.isNotEmpty) {
      return _starWithLetter;
    }
    return null;
  }

  String? validateEmailFinal(String? value) {
    if (value == null) {
      return _less3Char;
    }
    if (value.trim() == '') {
      return _less3Char;
    }
    if (!RegExValid.emailRegExp.hasMatch(value)) {
      return _validEmailPassword;
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null) {
      return null;
    }
    if (value.length > 64) {
      return _more64Char;
    }
    if (!RegExValid.beginsWithLetterRegExp.hasMatch(value) &&
        value.isNotEmpty) {
      return _starWithLetter;
    }
    return null;
  }

  String? validatePasswordFinal(String? value) {
    if (value == null) {
      return _empty;
    }
    if (value.length < 3) {
      return _less3Char;
    }
    // if (value.length > 64) {
    //   return _more64Char;
    // }
    // if (!RegExValid.beginsWithLetterRegExp.hasMatch(value) &&
    //     value.isNotEmpty) {
    //   return _starWithLetter;
    // }
    if (!RegExValid.passwordRegExp.hasMatch(value)) {
      return _validCharPassword;
    }

    return null;
  }
}
