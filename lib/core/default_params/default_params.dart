import 'package:equatable/equatable.dart';

class DefaultParams extends Equatable {
  final String? pageNo;
  final int? pageSize;
  final String? sortBy;

  const DefaultParams({
    this.pageNo,
    this.pageSize,
    this.sortBy,
  });

  @override
  List<Object?> get props => [
        pageNo,
        pageSize,
        sortBy,
      ];
}
