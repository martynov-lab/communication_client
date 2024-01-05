import 'package:communication_client/feature/auth/domain/state/obscure_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? errorText;
  final bool isObscure;
  final IconData? icon;

  const AppTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.errorText,
    this.isObscure = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ObscurePasswordBloc(),
      child: BlocBuilder<ObscurePasswordBloc, ObscurePasswordState>(
        builder: (context, state) {
          return TextFormField(
            controller: controller,
            maxLines: 1,
            obscureText: isObscure ? state.isObscureInput : false,
            obscuringCharacter: '●',
            style: TextStyle(
              fontSize: 16,
              color: errorText == null ? Colors.grey : Colors.red,
              letterSpacing: 2,
            ),
            onEditingComplete: () => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              errorText: errorText,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              errorStyle: const TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
              hintText: labelText,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.red, width: 1),
              ),
              prefixIcon: icon != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: IconTheme(
                        data: IconThemeData(
                            color:
                                errorText == null ? Colors.grey : Colors.red),
                        child: Icon(icon),
                      ),
                    )
                  : null,
              suffixIcon: isObscure
                  ? IconButton(
                      icon: state.isObscureInput
                          ? Icon(
                              Icons.visibility,
                              color:
                                  errorText == null ? Colors.grey : Colors.red,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color:
                                  errorText == null ? Colors.grey : Colors.red,
                            ),
                      onPressed: () {
                        context.read<ObscurePasswordBloc>().add(ObscureInput());
                      })
                  : null,
            ),
          );
        },
      ),
    );
  }
}
