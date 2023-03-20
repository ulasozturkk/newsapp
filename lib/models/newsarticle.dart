

// ignore: camel_case_types
class newsarticle {

  final String title;
  final String description;
  final String urlToImage;
  final String url;

  newsarticle({required this.title,required this.description,required this.urlToImage,required this.url});

  factory newsarticle.fromJson(Map<String,dynamic> json){
    return newsarticle(
      title: json["title"].toString(),
      description: json["description"].toString(),
      urlToImage: json["urlToImage"].toString(),
      url: json["url"].toString()
    );
  }
}