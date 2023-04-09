class ServerException implements Exception {
  static String getErrorMessage(int errorCode) {
    switch (errorCode) {
      case 400:
        return "Неверный запрос";
      case 401:
        return "Неавторизованный доступ";
      case 403:
        return "Доступ запрещен";
      case 404:
        return "Ресурс не найден";
      case 405:
        return "Метод не поддерживается";
      case 406:
        return "Неприемлемый формат данных";
      case 408:
        return "Время ожидания запроса истекло";
      case 409:
        return "Конфликт";
      case 410:
        return "Ресурс удален";
      case 413:
        return "Слишком большой размер запроса";
      case 415:
        return "Неподдерживаемый тип данных";
      case 429:
        return "Слишком много запросов";
      case 500:
        return "Внутренняя ошибка сервера";
      case 501:
        return "Метод не реализован";
      case 502:
        return "Неверный шлюз";
      case 503:
        return "Сервис недоступен";
      case 504:
        return "Шлюз не отвечает";
      case 505:
        return "Версия HTTP не поддерживается";
      default:
        return "Неизвестная ошибка";
    }
  }
}
