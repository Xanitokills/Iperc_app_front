class ContactinfoModel {
  ContactinfoModel({
    required this.id,
    required this.nombre,
    required this.correo,
  });

  int id;
  String nombre;
  String correo;

  factory ContactinfoModel.fromJson(Map<String, dynamic> json) =>
      ContactinfoModel(
        id: json["id"],
        nombre: json["name"],
        correo: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "correo": correo,
      };
}
