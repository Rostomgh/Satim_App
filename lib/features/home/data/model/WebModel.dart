class WebModel {
  //final String emailY;
  final String url;

  WebModel(/*this.emailY,*/ {required this.url});

  factory WebModel.fromJson(Map<String, dynamic> json) {
    return WebModel(
      //emailY: json['emailY'] as String,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
    //  'emailY': emailY,
      'url': url,
    };
  }
}