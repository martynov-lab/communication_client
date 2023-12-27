import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/feature/auth/domain/auth_state/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/presentation/components/app_snackbar/top_snack_bar.dart';

class AuthBuilder extends StatelessWidget {
  final WidgetBuilder isUnauthorized;
  final ValueWidgetBuilder isAuthorized;
  final WidgetBuilder isLading;

  const AuthBuilder({
    super.key,
    required this.isUnauthorized,
    required this.isAuthorized,
    required this.isLading,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
        builder: ((context, state) {
          return state.when(
            unauthorized: (() => isUnauthorized(context)),
            authorized: ((userEntity) =>
                isAuthorized(context, userEntity, this)),
            loading: (() => isLading(context)),
            error: ((error) => isUnauthorized(context)),
          );
        }),
        listenWhen: (previous, current) =>
            previous.mapOrNull(
              error: (value) => value,
            ) !=
            current.mapOrNull(
              error: (value) => value,
            ),
        listener: ((context, state) {
          state.whenOrNull(
              error: (error) =>
                  showErrorSnackBar(context, ErrorEntity.fromException(error))

              // _showSnackBar(context, error),
              );
        }));
  }

  // void _showSnackBar(BuildContext context, dynamic error) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       duration: const Duration(seconds: 5),
  //       content: SingleChildScrollView(
  //         child: Text(
  //           error.toString(),
  //           maxLines: 5,
  //         ),
  //       )));
  // }
}
