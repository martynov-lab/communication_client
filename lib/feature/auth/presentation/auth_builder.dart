import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/app/utils/utils.dart';
import 'package:communication_client/feature/auth/domain/state/auth_state/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          Utils.printGreen('AuthBloc state: $state');
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
                  showErrorSnackBar(context, ErrorEntity.fromException(error)));
        }));
  }
}
