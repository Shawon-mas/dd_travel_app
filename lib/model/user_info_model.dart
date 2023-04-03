// To parse this JSON data, do
//
//     final userInfoModel = userInfoModelFromJson(jsonString);

import 'dart:convert';

UserInfoModel userInfoModelFromJson(String str) => UserInfoModel.fromJson(json.decode(str));

String userInfoModelToJson(UserInfoModel data) => json.encode(data.toJson());

class UserInfoModel {
  UserInfoModel({
    this.message,
    this.token,
    this.user,
  });

  String? message;
  String? token;
  User? user;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
    message: json["message"],
    token: json["token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "token": token,
    "user": user!.toJson(),
  };
}

class User {
  User({
    this.id,
    this.name,
    this.role,
    this.email,
    this.phone,
    this.gender,
    this.dob,
    this.image,
    this.address,
    this.prefer,
    this.referCode,
    this.status,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? role;
  String? email;
  String? phone;
  String? gender;
  DateTime? dob;
  String? image;
  String? address;
  String? prefer;
  String? referCode;
  String? status;
  dynamic emailVerifiedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    role: json["role"],
    email: json["email"],
    phone: json["phone"],
    gender: json["gender"],
    dob: DateTime.parse(json["dob"]),
    image: json["image"],
    address: json["address"],
    prefer: json["prefer"],
    referCode: json["refer_code"],
    status: json["status"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "role": role,
    "email": email,
    "phone": phone,
    "gender": gender,
    "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    "image": image,
    "address": address,
    "prefer": prefer,
    "refer_code": referCode,
    "status": status,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
  };
}
