import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class ObscurePasswordEvent {}

final class ObscureInput1 extends ObscurePasswordEvent {}

final class ObscureInput2 extends ObscurePasswordEvent {}

class ObscurePasswordBloc
    extends Bloc<ObscurePasswordEvent, ObscurePasswordState> {
  ObscurePasswordBloc() : super(ObscurePasswordState()) {
    on<ObscurePasswordEvent>(
      (event, emitter) {
        switch (event) {
          case ObscureInput1():
            _obscureInput1(event, emitter);
          case ObscureInput2():
            _obscureInput2(event, emitter);
        }
      },
      transformer: bloc_concurrency.droppable(),
    );
  }

  void _obscureInput1(
      ObscureInput1 event, Emitter<ObscurePasswordState> emitter) {
    emitter(
      state.copyWith(isObscureInput1: !state.isObscureInput1),
    );
  }

  void _obscureInput2(
      ObscureInput2 event, Emitter<ObscurePasswordState> emitter) {
    emitter(
      state.copyWith(isObscureInput2: !state.isObscureInput2),
    );
  }
}

final class ObscurePasswordState {
  final bool isObscureInput1;
  final bool isObscureInput2;

  ObscurePasswordState({
    this.isObscureInput1 = true,
    this.isObscureInput2 = true,
  });

  ObscurePasswordState copyWith({
    bool? isObscureInput1,
    bool? isObscureInput2,
  }) {
    return ObscurePasswordState(
      isObscureInput1: isObscureInput1 ?? this.isObscureInput1,
      isObscureInput2: isObscureInput2 ?? this.isObscureInput2,
    );
  }
}
