base class RegExValid {
  static final RegExp emailRegExp = RegExp(
    r'^\S+[@]{1}[\w\-\.\_\,\!\~\(\)]+[\.]{1}[\S]+$', //r'^.+@.+$",
  );
  static final RegExp passwordRegExp = RegExp(
    r'^[A-Za-z0-9]+$',
  );

  static final RegExp beginsWithLetterRegExp = RegExp(
    r'^[a-zA-z]{1}',
  );
}
