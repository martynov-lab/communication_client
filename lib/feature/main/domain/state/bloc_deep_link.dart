import 'dart:async';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

abstract class Bloc {
  void dispose();
}

@injectable
class DeepLinkBloc extends Bloc {
  //Event Channel creation
  static const stream = EventChannel('deeplink.flutter.dev/events');

  //Method channel creation
  static const platform = MethodChannel('deeplink.flutter.dev/channel');

  final StreamController<String> _stateController =
      StreamController.broadcast();

  Stream<String> get state => _stateController.stream;

  Sink<String> get _stateSink => _stateController.sink;

  //Adding the listener into contructor
  DeepLinkBloc() {
//Checking application start by deep link
    startUri().then(_onRedirected);
    //Checking broadcast stream, if deep link was clicked in opened appication
    stream.receiveBroadcastStream().listen((d) => _onRedirected(d));
  }

  _onRedirected(String uri) {
    // Here can be any uri analysis, checking tokens etc, if it’s necessary
    // Throw deep link URI into the BloC's stream
    final _hashRegex = RegExp(
        r'\w+$'); //^(?:[^:]+:\/\/)?(?:communication-client\.ru\/guest\/)?(.+)$
    var matcher = _hashRegex.firstMatch(uri)!;
    var hash = matcher[0]!;
    _stateSink.add(hash);
  }

  @override
  void dispose() {
    _stateController.close();
    _stateSink.close();
  }

  Future<String> startUri() async {
    try {
      return await platform.invokeMethod('initialLink');
    } on PlatformException catch (e) {
      return "Failed to Invoke: '${e.message}'.";
    }
  }
}
