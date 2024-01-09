import 'package:communication_client/app/presentation/components/app_button.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/presentation/components/custom_icons.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/platform/adaptive_widget.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:communication_client/feature/auth/presentation/components/editing_profile.dart';
import 'package:communication_client/feature/auth/presentation/components/item_avatar.dart';
import 'package:communication_client/feature/auth/presentation/components/item_profile.dart';
import 'package:communication_client/feature/main/presentation/screen/footter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  final UserEntity user;
  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<void> unfocus() async {
    var currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  bool isEditing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorApp.backgroundLight,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
        ),
        leading: IconButton(
            icon: const Icon(CustomIcon.arrowBackIos),
            onPressed: (() {
              unfocus();
              Future.delayed(const Duration(milliseconds: 500), () {
                Navigator.of(context).pop();
              });
            })),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isEditing = !isEditing;
                });
              },
              icon: const Icon(
                CustomIcon.edit,
                // color: ColorApp.grey,
              )),
          IconButton(
              onPressed: () {
                showInfoSnackBar(context,
                    'Страница с настройками комнаты находится в разработкe');
              },
              icon: const Icon(
                CustomIcon.settings,
                // color: ColorApp.grey,
              )),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              maxHeight: constraints.maxHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 100,
                bottom: 5,
                left: 20,
                right: 20,
              ),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  // UserEntity? user;
                  // if (state is ProfileFetchedUser) {
                  //   user = state.user;
                  // }
                  // if (state is ProfileUserUpdated) {
                  //   user = state.user;
                  // }
                  // ----------------------//

                  // final authEntity = state.whenOrNull(
                  //   authorized: (authEntity) => authEntity,
                  // );
                  // final user = authEntity?.user;
                  // if (authEntity?.userState?.connectionState ==
                  //     ConnectionState.waiting) {
                  //   return const AppLoader();
                  // }

                  return AdaptiveWidget(
                    narrow: IntrinsicHeight(
                        child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ItemAvatar(user: widget.user),
                            const SizedBox(height: 50),
                            isEditing
                                ? EditingProfile(
                                    user: widget.user,
                                    onPressed: (name, email) {
                                      context.read<AuthBloc>().add(
                                          AuthEvent.userUpdate(
                                              username: name, email: email));
                                      setState(() {
                                        isEditing = false;
                                      });
                                    },
                                  )
                                : ItemProfile(user: widget.user),
                          ],
                        ),
                        Column(children: [
                          !isEditing
                              ? AppButton(
                                  backgoundColor:
                                      ColorApp.error.withOpacity(.5),
                                  text: 'Удалить аккаунт',
                                  onPressed: () {
                                    var currentFocus = FocusScope.of(context);

                                    if (!currentFocus.hasPrimaryFocus) {
                                      currentFocus.unfocus();
                                    }
                                    context
                                        .read<AuthBloc>()
                                        .add(AuthEvent.logout());
                                  },
                                  isActive: true,
                                )
                              : const SizedBox.shrink(),
                          const SizedBox(height: 20),
                          const Footer()
                        ]),
                      ],
                    )),
                  );
                },
              ),
            ),
          ));
        },
      ),
    );
  }
}
