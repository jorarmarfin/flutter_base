import 'dart:convert';

class LibrosModel {
    LibrosModel({
        required this.libro,
    });

    List<Libro> libro;

    factory LibrosModel.fromJson(String str) => LibrosModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LibrosModel.fromMap(Map<String, dynamic> json) => LibrosModel(
        libro: List<Libro>.from(json["libro"].map((x) => Libro.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "libro": List<dynamic>.from(libro.map((x) => x.toMap())),
    };
}

class Libro {
    Libro({
      required  this.nombre,
      required  this.area,
      required  this.autor,
      required  this.descripcion,
      required  this.areaId,
    });

    String nombre;
    String area;
    String autor;
    String descripcion;
    String areaId;

    factory Libro.fromJson(String str) => Libro.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Libro.fromMap(Map<String, dynamic> json) => Libro(
        nombre: json["nombre"],
        area: json["area"],
        autor: json["autor"],
        descripcion: json["descripcion"],
        areaId: json["area_id"],
    );

    Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "area": area,
        "autor": autor,
        "descripcion": descripcion,
        "area_id": areaId,
    };
}
