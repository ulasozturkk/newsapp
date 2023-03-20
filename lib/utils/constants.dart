

class Constants {

  static String topHeadLinesURL = "https://newsapi.org/v2/everything?q=tesla&from=2023-02-19&sortBy=publishedAt&apiKey=678b89a96bb34e8e89efef20f3d68bc8";

  static String headlinesByKeyword(String keyword) {
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=678b89a96bb34e8e89efef20f3d68bc8";
  }

}