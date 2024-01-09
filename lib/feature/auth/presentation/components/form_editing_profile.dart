import 'package:communication_client/app/presentation/components/app_text_field.dart';
import 'package:flutter/material.dart';

class FormEditingProfile extends StatelessWidget {
  final String label;
  // final String value;
  final TextEditingController controller;
  const FormEditingProfile({
    super.key,
    required this.label,
    // required this.value,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: label,
      controller: controller,
    );
  }
}
