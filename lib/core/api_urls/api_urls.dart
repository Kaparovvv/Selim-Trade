class ApiUrls {
  static String reviewsListUrl() => '/api/v1/review';
  static String reviewsUrl(int id) => '/api/v1/review/{$id}';
  static String newsListUrl() => '/api/v1/news';
  static String newsUrl(int id) => '/api/v1/news/{$id}';
  static String gateListUrl() => '/api/v1/gate';
  static String gateUrl(int id) => '/api/v1/gate/{$id}';
  static String newOrder() => '/api/v1/new-order';
}
