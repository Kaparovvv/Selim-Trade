part of 'gates_bloc.dart';

@freezed
class GatesState with _$GatesState {
  const factory GatesState.initial() = _Initial;
  const factory GatesState.loading() = LoadingGateState;
  const factory GatesState.loadedGate({
    required GateEntity gateEntity,
  }) = LoadedGateState;
  const factory GatesState.loadedGateLlist({
    required List<GatesListEntity> gateListEntity,
  }) = LoadedGateListState;
  const factory GatesState.error({required String message}) = ErrorGateState;
}
