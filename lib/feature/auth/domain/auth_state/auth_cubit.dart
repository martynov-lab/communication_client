import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/domain/error_entity/error_entity.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

@lazySingleton
class AuthCubit extends HydratedCubit<AuthState> {
  final AuthRepository authRepository;
  AuthCubit(this.authRepository) : super(AuthState.unauthorized());

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(AuthState.loading());
    try {
      final UserEntity userEntity =
          await authRepository.signIn(email: email, password: password);
      emit(AuthState.authorized(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    emit(AuthState.loading());
    try {
      final UserEntity userEntity = await authRepository.signUp(
        username: username,
        email: email,
        password: password,
      );
      emit(AuthState.authorized(userEntity));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> logout() async {
    emit(AuthState.unauthorized());
  }

  Future<void> getProfile() async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      final UserEntity newUserEntity = await authRepository.getProfile();
      emit(state.maybeWhen(
          orElse: () => state,
          authorized: (userEntity) => AuthState.authorized(userEntity.copyWith(
              email: newUserEntity.email, username: newUserEntity.username))));
      _updateUserState(const AsyncSnapshot.withData(
          ConnectionState.done, "Success get date"));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  void _updateUserState(AsyncSnapshot asyncSnapshot) {
    emit(state.maybeWhen(
      orElse: () => state,
      authorized: (userEntity) {
        return AuthState.authorized(
            userEntity.copyWith(userState: asyncSnapshot));
      },
    ));
  }

  Future<void> userUpdate(String? username, String? email) async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      // await Future.delayed(const Duration(seconds: 1));
      final bool isEmptyUserName = username?.trim().isEmpty == true;
      final bool isEmptyEmail = email?.trim().isEmpty == true;

      final UserEntity newUserEntity = await authRepository.updateUser(
        username: isEmptyUserName ? null : username,
        email: isEmptyEmail ? null : email,
      );
      emit(
        state.maybeWhen(
            orElse: () => state,
            authorized: (userEntity) =>
                AuthState.authorized(userEntity.copyWith(
                  email: newUserEntity.email,
                  username: newUserEntity.username,
                ))),
      );
      _updateUserState(
          const AsyncSnapshot.withData(ConnectionState.done, "Success update"));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<String?> refreshToken() async {
    final refreshToken =
        state.whenOrNull(authorized: ((userEntity) => userEntity.refreshToken));
    try {
      return await authRepository
          .refrechToken(
        refreshToken: refreshToken,
      )
          .then((value) {
        final UserEntity userEntity = value;
        emit(AuthState.authorized(userEntity));
        return userEntity.accessToken;
      });
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> passwordUpdate({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      await Future.delayed(const Duration(seconds: 1));

      if (newPassword.trim().isEmpty == true) {
        throw ErrorEntity(message: "Новый пароль пустой");
      }

      final message = await authRepository.updatePassword(
          newPassword: newPassword, oldPassword: oldPassword);

      _updateUserState(AsyncSnapshot.withData(ConnectionState.done, message));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  // void logout() => emit(AuthState.unauthorized());

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    //Возвращаем только состояние "авторизован"
    return state.whenOrNull(
        authorized: (userEntity) => AuthState.authorized(userEntity));
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    //сохроняем состояние только если авторизован
    return state
            .whenOrNull(
                authorized: (userEntity) => AuthState.authorized(userEntity))
            ?.toJson() ??
        AuthState.unauthorized().toJson();
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthState.error(error));
    super.addError(error, stackTrace);
  }
}
