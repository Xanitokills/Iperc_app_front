// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

AutModel authFromJson(String str) => AutModel.fromJson(json.decode(str));

String authToJson(AutModel data) => json.encode(data.toJson());

class AutModel {
  bool status;
  String message;
  User? user;

  AutModel({
    required this.status,
    required this.message,
    this.user,
  });

  factory AutModel.fromJson(Map<String, dynamic> json) => AutModel(
      status: json["status"],
      message: json["message"],
      user: User.fromJson(json['user']));

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}

class User {
  String? usuario;
  String? password;
  int? id;
  String? nombre;
  String? cargo;

  User({
    required this.usuario,
    required this.password,
    required this.id,
    required this.nombre,
    required this.cargo,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        usuario: json["usuario"],
        password: json["password"],
        id: json["id"],
        nombre: json["nombre"],
        cargo: json["cargo"],
      );

  Map<String, dynamic> toJson() => {
        "usuario": usuario,
        "password": password,
        "id": id,
        "nombre": nombre,
        "cargo": cargo,
      };
}
