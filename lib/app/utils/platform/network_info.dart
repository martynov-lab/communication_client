import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  // Future<bool> get isInternet;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected async {
    bool result = await connectionChecker.hasConnection;
    return result;
  }

  // @override
  // Future<bool> get isInternet async {
  //   bool hasInternet = false;
  //   connectionChecker.onStatusChange.listen((status) async {
  //     hasInternet = status == InternetConnectionStatus.connected;
  //   });
  //   return hasInternet;
  // }

  // Future<bool> get isInternet async {
  //   var isDeviceConnected = false;

  //   var subscription = Connectivity()
  //       .onConnectivityChanged
  //       .listen((ConnectivityResult result) async {
  //     if (result != ConnectivityResult.none) {
  //       isDeviceConnected = await InternetConnectionChecker().hasConnection;
  //     }
  //   });
  //   return isDeviceConnected;
  // }
}
