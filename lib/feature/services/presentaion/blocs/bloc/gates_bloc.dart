import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/default_params/default_params.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gate/gate_entity.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gates_list_entity.dart';
import 'package:selim_trade_app/feature/services/domain/usecases/gate_case.dart';
import 'package:selim_trade_app/feature/services/domain/usecases/gate_list_case.dart';

part 'gates_event.dart';
part 'gates_state.dart';
part 'gates_bloc.freezed.dart';

@Singleton(dependsOn: [GateCase, GateListCase])
class GatesBloc extends Bloc<GatesEvent, GatesState> {
  final GateCase gateCase;
  final GateListCase gateListCase;
  GatesBloc({
    required this.gateCase,
    required this.gateListCase,
  }) : super(const _Initial()) {
    on<GetGateEvent>((event, emit) async {
      emit(const GatesState.loading());
      final result = await gateCase(GateParams(gateId: event.gateId));
      result.fold(
        (failure) => emit(GatesState.error(message: failure.toString())),
        (gate) => emit(GatesState.loadedGate(gateEntity: gate)),
      );
    });

    on<GetGateListEvent>((event, emit) async {
      emit(const GatesState.loading());
      final result =
          await gateListCase(DefaultParams(pageSize: event.pageSize));
      result.fold(
        (failure) => emit(
          GatesState.error(message: failure.toString()),
        ),
        (gateList) => emit(
          GatesState.loadedGateLlist(gateListEntity: gateList),
        ),
      );
    });
  }
}
