// To parse this JSON data, do
//
//     final modelInspections = modelInspectionsFromJson(jsonString);

import 'dart:convert';

ModelInspections modelInspectionsFromJson(String str) =>
    ModelInspections.fromJson(json.decode(str));

String modelInspectionsToJson(ModelInspections data) =>
    json.encode(data.toJson());

class ModelInspections {
  final String message;
  final bool status;
  final List<Inspecciones> inspecciones;

  ModelInspections({
    required this.message,
    required this.status,
    required this.inspecciones,
  });

  factory ModelInspections.fromJson(Map<String, dynamic> json) =>
      ModelInspections(
        message: json["message"],
        status: json["status"],
        inspecciones: List<Inspecciones>.from(
            json["inspecciones"].map((x) => Inspecciones.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "inspecciones": List<dynamic>.from(inspecciones.map((x) => x.toJson())),
      };
}

class Inspecciones {
  final String nombreEstacion;
  final String ideEstacion;
  final DateTime fecInspeccion;
  final int ideInspeccion;
  final String estTxTelevision;
  final String estModuladorTv;
  final String estRadioFm;
  final String estTransmisorHf;
  final String estAntenaTv;
  final String estAntenaFm;
  final String estReceptorSatelital;
  final String estAntenaParabolica;
  final String estPozoTierra;
  final String estPararrayos;
  final String estTorreSoporte;
  final dynamic desObservacion;
  final String desConclusiones;
  final String desRecomendacion;
  final dynamic estEstacion;
  final double numLatitud;
  final double numLongitud;
  final int idUsuario;

  Inspecciones({
    required this.nombreEstacion,
    required this.ideEstacion,
    required this.fecInspeccion,
    required this.ideInspeccion,
    required this.estTxTelevision,
    required this.estModuladorTv,
    required this.estRadioFm,
    required this.estTransmisorHf,
    required this.estAntenaTv,
    required this.estAntenaFm,
    required this.estReceptorSatelital,
    required this.estAntenaParabolica,
    required this.estPozoTierra,
    required this.estPararrayos,
    required this.estTorreSoporte,
    required this.desObservacion,
    required this.desConclusiones,
    required this.desRecomendacion,
    required this.estEstacion,
    required this.numLatitud,
    required this.numLongitud,
    required this.idUsuario,
  });

  factory Inspecciones.fromJson(Map<String, dynamic> json) => Inspecciones(
        nombreEstacion: json["NOMBRE_ESTACION"],
        ideEstacion: json["IDE_ESTACION"],
        fecInspeccion: DateTime.parse(json["FEC_INSPECCION"]),
        ideInspeccion: json["IDE_INSPECCION"],
        estTxTelevision: json["EST_TX_TELEVISION"],
        estModuladorTv: json["EST_MODULADOR_TV"],
        estRadioFm: json["EST_RADIO_FM"],
        estTransmisorHf: json["EST_TRANSMISOR_HF"],
        estAntenaTv: json["EST_ANTENA_TV"],
        estAntenaFm: json["EST_ANTENA_FM"],
        estReceptorSatelital: json["EST_RECEPTOR_SATELITAL"],
        estAntenaParabolica: json["EST_ANTENA_PARABOLICA"],
        estPozoTierra: json["EST_POZO_TIERRA"],
        estPararrayos: json["EST_PARARRAYOS"],
        estTorreSoporte: json["EST_TORRE_SOPORTE"],
        desObservacion: json["DES_OBSERVACION"],
        desConclusiones: json["DES_CONCLUSIONES"],
        desRecomendacion: json["DES_RECOMENDACION"],
        estEstacion: json["EST_ESTACION"],
        numLatitud: json["NUM_LATITUD"]?.toDouble(),
        numLongitud: json["NUM_LONGITUD"]?.toDouble(),
        idUsuario: json["ID_USUARIO"],
      );

  Map<String, dynamic> toJson() => {
        "NOMBRE_ESTACION": nombreEstacion,
        "IDE_ESTACION": ideEstacion,
        "FEC_INSPECCION": fecInspeccion.toIso8601String(),
        "IDE_INSPECCION": ideInspeccion,
        "EST_TX_TELEVISION": estTxTelevision,
        "EST_MODULADOR_TV": estModuladorTv,
        "EST_RADIO_FM": estRadioFm,
        "EST_TRANSMISOR_HF": estTransmisorHf,
        "EST_ANTENA_TV": estAntenaTv,
        "EST_ANTENA_FM": estAntenaFm,
        "EST_RECEPTOR_SATELITAL": estReceptorSatelital,
        "EST_ANTENA_PARABOLICA": estAntenaParabolica,
        "EST_POZO_TIERRA": estPozoTierra,
        "EST_PARARRAYOS": estPararrayos,
        "EST_TORRE_SOPORTE": estTorreSoporte,
        "DES_OBSERVACION": desObservacion,
        "DES_CONCLUSIONES": desConclusiones,
        "DES_RECOMENDACION": desRecomendacion,
        "EST_ESTACION": estEstacion,
        "NUM_LATITUD": numLatitud,
        "NUM_LONGITUD": numLongitud,
        "ID_USUARIO": idUsuario,
      };
}

enum EstModuladorTv { AVERIADO, NO_INSTALADO, OPERATIVO }

final estModuladorTvValues = EnumValues({
  "Averiado": EstModuladorTv.AVERIADO,
  "No Instalado": EstModuladorTv.NO_INSTALADO,
  "Operativo": EstModuladorTv.OPERATIVO
});

enum EstRadioFm { AVERIADO, NO_INSTALADO, POR_REGISTRAR }

final estRadioFmValues = EnumValues({
  "Averiado": EstRadioFm.AVERIADO,
  "No Instalado": EstRadioFm.NO_INSTALADO,
  "Por Registrar": EstRadioFm.POR_REGISTRAR
});

enum EstTxTelevision { AVERIADO, INEXISTENTE, NO_INSTALADO }

final estTxTelevisionValues = EnumValues({
  "Averiado": EstTxTelevision.AVERIADO,
  "Inexistente": EstTxTelevision.INEXISTENTE,
  "No Instalado": EstTxTelevision.NO_INSTALADO
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
