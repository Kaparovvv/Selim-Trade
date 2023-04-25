import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<ConnectivityResult> get isConnected;
}

@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<ConnectivityResult> get isConnected =>
      Connectivity().checkConnectivity();
}
