
class WebModel {
  
  final String url;

  WebModel({ required this.url});

  factory WebModel.fromJson(Map<String, dynamic> json) {
    return WebModel(
      //nameWeb: json['nameWeb'] as String,
      url: json['url'] as String,
    );
  }
    Map<String, dynamic> toJson() {
    return {
      //'nameWeb': nameWeb,
      'url': url,
    
    };
  }
}
