class PostTokenResp {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? refreshToken;
  User? user;

  PostTokenResp(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.refreshToken,
      this.user});

  PostTokenResp.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    refreshToken = json['refresh_token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.accessToken != null) {
      data['access_token'] = this.accessToken;
    }
    if (this.tokenType != null) {
      data['token_type'] = this.tokenType;
    }
    if (this.expiresIn != null) {
      data['expires_in'] = this.expiresIn;
    }
    if (this.refreshToken != null) {
      data['refresh_token'] = this.refreshToken;
    }
    if (this.user != null) {
      data['user'] = this.user?.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  String? aud;
  String? role;
  String? email;
  String? emailConfirmedAt;
  String? phone;
  String? confirmedAt;
  String? recoverySentAt;
  String? lastSignInAt;
  AppMetadata? appMetadata;
  UserMetadata? userMetadata;
  List? identities;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.aud,
      this.role,
      this.email,
      this.emailConfirmedAt,
      this.phone,
      this.confirmedAt,
      this.recoverySentAt,
      this.lastSignInAt,
      this.appMetadata,
      this.userMetadata,
      this.identities,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    aud = json['aud'];
    role = json['role'];
    email = json['email'];
    emailConfirmedAt = json['email_confirmed_at'];
    phone = json['phone'];
    confirmedAt = json['confirmed_at'];
    recoverySentAt = json['recovery_sent_at'];
    lastSignInAt = json['last_sign_in_at'];
    appMetadata = json['app_metadata'] != null
        ? AppMetadata.fromJson(json['app_metadata'])
        : null;
    userMetadata = json['user_metadata'] != null
        ? UserMetadata.fromJson(json['user_metadata'])
        : null;
    if (json['identities'] != null) {
      identities = [];
      json['identities'].forEach((v) {
        identities?.add(v);
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.aud != null) {
      data['aud'] = this.aud;
    }
    if (this.role != null) {
      data['role'] = this.role;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.emailConfirmedAt != null) {
      data['email_confirmed_at'] = this.emailConfirmedAt;
    }
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    if (this.confirmedAt != null) {
      data['confirmed_at'] = this.confirmedAt;
    }
    if (this.recoverySentAt != null) {
      data['recovery_sent_at'] = this.recoverySentAt;
    }
    if (this.lastSignInAt != null) {
      data['last_sign_in_at'] = this.lastSignInAt;
    }
    if (this.appMetadata != null) {
      data['app_metadata'] = this.appMetadata?.toJson();
    }
    if (this.userMetadata != null) {
      data['user_metadata'] = this.userMetadata?.toJson();
    }
    if (this.identities != null) {
      data['identities'] = this.identities?.map((v) => v).toList();
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    return data;
  }
}

class AppMetadata {
  String? provider;

  AppMetadata({this.provider});

  AppMetadata.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.provider != null) {
      data['provider'] = this.provider;
    }
    return data;
  }
}

class UserMetadata {
  String? visitorId;

  UserMetadata({this.visitorId});

  UserMetadata.fromJson(Map<String, dynamic> json) {
    visitorId = json['visitorId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.visitorId != null) {
      data['visitorId'] = this.visitorId;
    }
    return data;
  }
}
