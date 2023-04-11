class ApiUrls {
  static String reviewsListUrl() => '/api/v1/review/short';
  static String newsListUrl() => '/api/v1/news/short';
  static String newsUrl(int id) => '/api/v1/news/short/$id';
  static String gateListUrl() => '/api/v1/gate-types/short';
  static String gateIdUrl(int id) => '/api/v1/gate-types/short/$id';
  static String newOrder() => '/api/v1/new-order';
  static String worksListUrl() => '/api/v1/work';
}
