import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:selim_trade_app/core/error/server_exception.dart';

abstract class Failure extends Equatable {
  String serverException();
  String cacheException();

  @override
  List<Object?> get props => [];
}

@injectable
class CacheFailure extends Failure {
  final String message;

  CacheFailure(this.message);

  @override
  cacheException() => CacheException.exception(message);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@injectable
class ServerFailure extends Failure {
  final int errorCode;

  ServerFailure({required this.errorCode});
  @override
  serverException() => ServerException.getErrorMessage(errorCode);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
