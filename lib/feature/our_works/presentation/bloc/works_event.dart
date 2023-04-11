part of 'works_bloc.dart';

@freezed
class WorksEvent with _$WorksEvent {
  const factory WorksEvent.getWorksList({required int pageSize}) =
      GetWorksListEvent;
}
