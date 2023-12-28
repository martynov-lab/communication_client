import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(
    this.authRepository,
  ) : super(
          authRepository.currentUser.isNotEmpty
              ? AuthState.authorized(authRepository.currentUser)
              : AuthState.unauthorized(),
        ) {
    on<AuthEvent>(
      (event, emitter) => event.map<Future<void>>(
        signIn: (event) => _signIn(event, emitter),
        signUp: (event) => _signUp(event, emitter),
        logout: (event) => _logout(event, emitter),
        userUpdate: (event) => _userUpdate(event, emitter),
        refreshToken: (event) => _refreshToken(event, emitter),
        passwordUpdate: (event) => _passwordUpdate(event, emitter),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  Future<void> _signIn(
      _SignInAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.loading());
      UserEntity userEntity = await authRepository.signIn(
        email: event.email,
        password: event.password,
      );
      emitter(AuthState.authorized(userEntity));
    } catch (error, st) {
      emitter(AuthState.error(error));
      addError(error, st);
    }
  }

  Future<void> _signUp(
      _SignUpAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.loading());
      UserEntity userEntity = await authRepository.signUp(
        username: event.username,
        email: event.email,
        password: event.password,
      );
      emitter(AuthState.authorized(userEntity));
    } catch (error, st) {
      emitter(AuthState.error(error));
      addError(error, st);
    }
  }

  Future<void> _logout(
      _LogoutAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.loading());
      await authRepository.logout();
      emitter(AuthState.unauthorized());
    } catch (error, st) {
      emitter(AuthState.error(error));
      addError(error, st);
    }
  }

  Future<void> _userUpdate(
      _UserUpdateAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.loading());
      UserEntity userEntity = await authRepository.updateUser(
        username: event.username,
        email: event.email,
      );
      emitter(AuthState.authorized(userEntity));
    } catch (error, st) {
      emitter(AuthState.error(error));
      addError(error, st);
    }
  }

  Future<void> _refreshToken(
      _RefreshTokenAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.loading());
      UserEntity userEntity = await authRepository.refrechToken();
      emitter(AuthState.authorized(userEntity));
    } catch (error, st) {
      emitter(AuthState.error(error));
      addError(error, st);
    }
  }

  Future<void> _passwordUpdate(
      _PasswordUpdateAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.loading());
      await Future.delayed(const Duration(seconds: 1));

      if (event.newPassword.trim().isEmpty == true) {
        throw ErrorEntity(message: "Новый пароль пустой");
      }

      UserEntity userEntity = await authRepository.updatePassword(
        newPassword: event.newPassword,
        oldPassword: event.oldPassword,
      );
      emitter(AuthState.authorized(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    super.addError(error, stackTrace);
  }
}
