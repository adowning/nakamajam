class PostTokenReq {
  String? email;
  String? password;

  PostTokenReq({this.email, this.password});

  PostTokenReq.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    return data;
  }
}
