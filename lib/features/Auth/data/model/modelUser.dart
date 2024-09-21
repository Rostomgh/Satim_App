class UserModel{
  final String name;
  final String email;
  final String? token ;
  
  UserModel({required this.name,required this.email , this.token}); 
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ,
      token: json['token'], 
      email: json['email'] ,
      
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': name,
      'email': email,
      'token': token,
    };
  }
}



