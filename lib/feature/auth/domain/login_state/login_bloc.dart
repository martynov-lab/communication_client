import 'package:communication_client/feature/auth/domain/entities/iput_state/input_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
