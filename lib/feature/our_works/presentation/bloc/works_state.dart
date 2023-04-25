part of 'works_bloc.dart';

@freezed
class WorksState with _$WorksState {
  const factory WorksState.initial() = _Initial;

  const factory WorksState.loading() = LoadingWorksState;
  const factory WorksState.loaded({required List<WorksEntity> worksList}) =
      LoadedWorksState;
  const factory WorksState.error({required String message}) = ErrorWorksState;
}
