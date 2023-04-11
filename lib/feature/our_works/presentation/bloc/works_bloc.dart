import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/default_params/default_params.dart';

import '../../domain/entities/works_entity.dart';
import '../../domain/usecases/works_case.dart';

part 'works_event.dart';
part 'works_state.dart';
part 'works_bloc.freezed.dart';

@Singleton(dependsOn: [WorksCase])
class WorksBloc extends Bloc<WorksEvent, WorksState> {
  final WorksCase worksCase;

  WorksBloc({required this.worksCase}) : super(const _Initial()) {
    on<GetWorksListEvent>((event, emit) async {
      emit(const WorksState.loading());
      final result = await worksCase(DefaultParams(pageSize: event.pageSize));
      result.fold(
        (failure) => emit(WorksState.error(message: failure.toString())),
        (worksList) => emit(WorksState.loaded(worksList: worksList)),
      );
    });
  }
}
