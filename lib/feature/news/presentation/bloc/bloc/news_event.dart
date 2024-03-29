part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.getNewsListEvent({
    required int pageSize,
  }) = GetNewsListEvent;
  const factory NewsEvent.getNewsEvent({required int newsId}) = GetNewsEvent;
}
