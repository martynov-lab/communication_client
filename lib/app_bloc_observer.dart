import 'package:communication_client/app/utils/errors/app_error.dart';
import 'package:communication_client/app/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  factory AppBlocObserver.instance() => _singleton ??= AppBlocObserver._();
  static AppBlocObserver? _singleton;
  AppBlocObserver._();

  @override
  void onCreate(BlocBase<Object?> bloc) {
    super.onCreate(bloc);
    Utils.printWhite('${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event == null) return;
    Utils.printWhite('${bloc.runtimeType}.add(${event.runtimeType})');
    final Object? state = bloc.state;
    if (state == null) return;
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    final Object? event = transition.event;
    final Object? currentState = transition.currentState;
    final Object? nextState = transition.nextState;
    if (event == null || currentState == null || nextState == null) return;
    Utils.printWhite(
        '${bloc.runtimeType} ${event.runtimeType}: ${currentState.runtimeType}->${nextState.runtimeType}');
  }

//Прехватываем все ошибки логики. И от сюда их можно отправлять в Sentry, Firebase Crashlytics и т.д.
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    Utils.printRed('Error: $error; StackTrace: $stackTrace');
    AppError.logError(
      error,
      stackTrace: stackTrace,
      hint: 'BLoC: ${bloc.runtimeType.toString()}',
    );
  }

  @override
  void onClose(BlocBase<Object?> bloc) {
    super.onClose(bloc);
    Utils.printWhite('${bloc.runtimeType}.close()');
  }
}
