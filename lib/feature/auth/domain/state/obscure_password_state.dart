import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class ObscurePasswordEvent {}

final class ObscureInput extends ObscurePasswordEvent {}

class ObscurePasswordBloc
    extends Bloc<ObscurePasswordEvent, ObscurePasswordState> {
  ObscurePasswordBloc() : super(ObscurePasswordState()) {
    on<ObscurePasswordEvent>(
      (event, emitter) {
        switch (event) {
          case ObscureInput():
            _obscureInput(event, emitter);
        }
      },
      transformer: bloc_concurrency.droppable(),
    );
  }

  void _obscureInput(
      ObscureInput event, Emitter<ObscurePasswordState> emitter) {
    emitter(
      state.copyWith(isObscureInput: !state.isObscureInput),
    );
  }
}

final class ObscurePasswordState {
  final bool isObscureInput;

  ObscurePasswordState({
    this.isObscureInput = true,
  });

  ObscurePasswordState copyWith({
    bool? isObscureInput,
  }) {
    return ObscurePasswordState(
      isObscureInput: isObscureInput ?? this.isObscureInput,
    );
  }
}
