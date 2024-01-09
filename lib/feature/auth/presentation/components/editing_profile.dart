import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:communication_client/feature/auth/presentation/components/form_editing_profile.dart';
import 'package:flutter/material.dart';

class EditingProfile extends StatefulWidget {
  final UserEntity? user;
  final Function(
    String name,
    // String surname,
    String email,
    // String phone,
  ) onPressed;
  const EditingProfile({
    super.key,
    this.user,
    required this.onPressed,
  });

  @override
  State<EditingProfile> createState() => _EditingProfileState();
}

class _EditingProfileState extends State<EditingProfile> {
  late final TextEditingController nameController;
  // late final TextEditingController surnameController;
  late final TextEditingController emailController;
  // late final TextEditingController phoneController;
  // var maskForPhone = MaskTextInputFormatter(
  //     mask: '+#(###) ###-##-##', filter: {'#': RegExp(r'^[0-9]')});
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameController = TextEditingController(text: widget.user?.firstname);
    // surnameController = TextEditingController(text: widget.user?.surname);
    emailController = TextEditingController(text: widget.user?.email);
    // phoneController = TextEditingController(text: widget.user?.phoneNumber);
    // nameController.text = widget.user.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormEditingProfile(
            label: 'Имя:',
            // value: 'Андрей',
            controller: nameController,
          ),
          // const SizedBox(height: 20),
          // FormEditingProfile(
          //   label: 'Фамилия:',
          //   // value: 'Мартынов',
          //   controller: surnameController,
          // ),
          const SizedBox(height: 20),
          FormEditingProfile(
            label: 'Email:',
            // value: 'test@test.ru',
            controller: emailController,
          ),
          // const SizedBox(height: 20),
          // FormEditingProfile(
          //   label: 'Телефон:',
          //   // value: '89002000600',
          //   controller: phoneController,
          // ),
          // AppTextField(
          //   hint: '+7(000) 000-00-00',
          //   label: Text('Телефон:'),
          //   controller: phoneController,
          //   validate: false,
          //   isObscure: IsObscure.nothing,
          //   keyboard: TextInputType.name,
          //   maskForInput: [maskForPhone],
          // ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: AppButton(
                  text: 'Сохранить',
                  onPressed: () {
                    var currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    if (formKey.currentState?.validate() == true) {
                      widget.onPressed(
                          nameController.text,
                          // surnameController.text,
                          emailController.text
                          // phoneController.text,
                          );
                      // Navigator.pop(context);
                    }
                  },
                  isActive: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
