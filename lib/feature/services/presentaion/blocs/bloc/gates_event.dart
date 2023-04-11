part of 'gates_bloc.dart';

@freezed
class GatesEvent with _$GatesEvent {
  const factory GatesEvent.getGate({required int gateId}) = GetGateEvent;
  const factory GatesEvent.getGateList({
    required int pageSize,
  }) = GetGateListEvent;
}
