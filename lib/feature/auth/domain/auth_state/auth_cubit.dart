import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

@lazySingleton
class AuthCubit extends HydratedCubit<AuthState> {
  final AuthRepository authRepository;
  AuthCubit(this.authRepository) : super(AuthState.unauthorized());

  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    emit(AuthState.loading());
    try {
      final UserEntity userEntity =
          await authRepository.signIn(username: username, password: password);
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

  Future<void> getProfile() async {
    try {
      final UserEntity newUserEntity = await authRepository.getProfile();
      emit(
        state.maybeWhen(
            orElse: (() => state),
            authorized: ((userEntity) =>
                AuthState.authorized(userEntity.copyWith(
                  email: newUserEntity.email,
                  username: newUserEntity.username,
                )))),
      );
    } catch (error, st) {
      addError(error, st);
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

  void logout() => emit(AuthState.unauthorized());

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    //Возвращаем только состояние "авторизован"
    return state.whenOrNull(
        authorized: (userEntity) => AuthState.authorized(userEntity));
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
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
