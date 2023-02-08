import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData? icon;

  const AppTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isObscure = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: emptyValidator,
      controller: controller,
      maxLength: 1,
      obscureText: isObscure,
      style: const TextStyle(fontSize: 16, color: Colors.grey),
      onEditingComplete: () => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        hintText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
        prefixIcon: icon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: IconTheme(
                  data: const IconThemeData(color: Colors.grey),
                  child: Icon(icon),
                ),
              )
            : null,
        suffixIcon: IconButton(
            icon: isObscure
                ? const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
            onPressed: () {} //_toggle,
            ),
      ),
    );
  }

  String? emptyValidator(String? value) {
    if (value?.isEmpty == true) {
      return "Поле не должно быть пустым";
    }

    // switch (hint) {
    //   case "Логин":
    //     return (value == null || value.isEmpty) ? 'Введите имя' : null;
    //   case "Пароль":
    //     return (value == null || value.isEmpty) ? 'Введите пароль' : null;
    //   default:
    // }
    // return null;
  }
}
