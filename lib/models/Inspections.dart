// To parse this JSON data, do
//
//     final inspection = inspectionFromJson(jsonString);

import 'dart:convert';

Inspection inspectionFromJson(String str) =>
    Inspection.fromJson(json.decode(str));

String inspectionToJson(Inspection data) => json.encode(data.toJson());

class Inspection {
  final bool status;
  final String message;
  final List<InspectionElement> inspection;

  Inspection({
    required this.status,
    required this.message,
    required this.inspection,
  });

  factory Inspection.fromJson(Map<String, dynamic> json) => Inspection(
        status: json["status"],
        message: json["message"],
        inspection: List<InspectionElement>.from(
            json["inspection"].map((x) => InspectionElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "inspection": List<dynamic>.from(inspection.map((x) => x.toJson())),
      };
}

class InspectionElement {
  final int ideInspeccion;
  final String ideEstacion;
  final DateTime fecInspeccion;
  final double numLatitud;
  final double numLongitud;
  final dynamic numAltitud;
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
  final dynamic desObservacion;
  final String imgFoto1;
  final String imgFoto2;
  final dynamic estEstacion;
  final String desRecomendacion;
  final String desConclusiones;
  final int idUsuario;
  final String nombreEstacion;
  final String imgFoto3;
  final String estTorreSoporte;
  final String imgFoto4;
  final String imgFoto5;
  final String imgFoto6;
  final String imgFoto7;
  final String imgFoto8;
  final String imgFoto9;
  final String imgFoto10;
  final String imgFoto11;
  final String imgFoto12;
  final String imgFoto13;
  final String imgFoto14;
  final String imgFoto15;
  final String imgFoto16;
  final String imgFoto17;
  final String imgFoto18;
  final String imgFoto19;
  final String imgFoto20;

  InspectionElement({
    required this.ideInspeccion,
    required this.ideEstacion,
    required this.fecInspeccion,
    required this.numLatitud,
    required this.numLongitud,
    required this.numAltitud,
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
    required this.desObservacion,
    required this.imgFoto1,
    required this.imgFoto2,
    required this.estEstacion,
    required this.desRecomendacion,
    required this.desConclusiones,
    required this.idUsuario,
    required this.nombreEstacion,
    required this.imgFoto3,
    required this.estTorreSoporte,
    required this.imgFoto4,
    required this.imgFoto5,
    required this.imgFoto6,
    required this.imgFoto7,
    required this.imgFoto8,
    required this.imgFoto9,
    required this.imgFoto10,
    required this.imgFoto11,
    required this.imgFoto12,
    required this.imgFoto13,
    required this.imgFoto14,
    required this.imgFoto15,
    required this.imgFoto16,
    required this.imgFoto17,
    required this.imgFoto18,
    required this.imgFoto19,
    required this.imgFoto20,
  });

  factory InspectionElement.fromJson(Map<String, dynamic> json) =>
      InspectionElement(
        ideInspeccion: json["IDE_INSPECCION"],
        ideEstacion: json["IDE_ESTACION"],
        fecInspeccion: DateTime.parse(json["FEC_INSPECCION"]),
        numLatitud: json["NUM_LATITUD"]?.toDouble(),
        numLongitud: json["NUM_LONGITUD"]?.toDouble(),
        numAltitud: json["NUM_ALTITUD"],
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
        desObservacion: json["DES_OBSERVACION"],
        estEstacion: json["EST_ESTACION"],
        desRecomendacion: json["DES_RECOMENDACION"],
        desConclusiones: json["DES_CONCLUSIONES"],
        idUsuario: json["ID_USUARIO"],
        nombreEstacion: json["NOMBRE_ESTACION"],
        estTorreSoporte: json["EST_TORRE_SOPORTE"],
        imgFoto1: json["IMG_FOTO1"] ?? 'Sin imagen',
        imgFoto2: json["IMG_FOTO2"] ?? 'Sin imagen',
        imgFoto3: json["IMG_FOTO3"] ?? "Sin imagen",
        imgFoto4: json["IMG_FOTO4"] ?? 'Sin imagen',
        imgFoto5: json["IMG_FOTO5"] ?? 'Sin imagen',
        imgFoto6: json["IMG_FOTO6"] ?? 'Sin imagen',
        imgFoto7: json["IMG_FOTO7"] ?? 'Sin imagen',
        imgFoto8: json["IMG_FOTO8"] ?? 'Sin imagen',
        imgFoto9: json["IMG_FOTO9"] ?? 'Sin imagen',
        imgFoto10: json["IMG_FOTO10"] ?? 'Sin imagen',
        imgFoto11: json["IMG_FOTO11"] ?? 'Sin imagen',
        imgFoto12: json["IMG_FOTO12"] ?? 'Sin imagen',
        imgFoto13: json["IMG_FOTO13"] ?? 'Sin imagen',
        imgFoto14: json["IMG_FOTO14"] ?? 'Sin imagen',
        imgFoto15: json["IMG_FOTO15"] ?? 'Sin imagen',
        imgFoto16: json["IMG_FOTO16"] ?? 'Sin imagen',
        imgFoto17: json["IMG_FOTO17"] ?? 'Sin imagen',
        imgFoto18: json["IMG_FOTO18"] ?? 'Sin imagen',
        imgFoto19: json["IMG_FOTO19"] ?? 'Sin imagen',
        imgFoto20: json["IMG_FOTO20"] ?? 'Sin imagen',
      );

  Map<String, dynamic> toJson() => {
        "IDE_INSPECCION": ideInspeccion,
        "IDE_ESTACION": ideEstacion,
        "FEC_INSPECCION": fecInspeccion.toIso8601String(),
        "NUM_LATITUD": numLatitud,
        "NUM_LONGITUD": numLongitud,
        "NUM_ALTITUD": numAltitud,
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
        "DES_OBSERVACION": desObservacion,
        "IMG_FOTO1": imgFoto1,
        "IMG_FOTO2": imgFoto2,
        "EST_ESTACION": estEstacion,
        "DES_RECOMENDACION": desRecomendacion,
        "DES_CONCLUSIONES": desConclusiones,
        "ID_USUARIO": idUsuario,
        "NOMBRE_ESTACION": nombreEstacion,
        "IMG_FOTO3": imgFoto3,
        "EST_TORRE_SOPORTE": estTorreSoporte,
        "IMG_FOTO4": imgFoto4,
        "IMG_FOTO5": imgFoto5,
        "IMG_FOTO6": imgFoto6,
        "IMG_FOTO7": imgFoto7,
        "IMG_FOTO8": imgFoto8,
        "IMG_FOTO9": imgFoto9,
        "IMG_FOTO10": imgFoto10,
        "IMG_FOTO11": imgFoto11,
        "IMG_FOTO12": imgFoto12,
        "IMG_FOTO13": imgFoto13,
        "IMG_FOTO14": imgFoto14,
        "IMG_FOTO15": imgFoto15,
        "IMG_FOTO16": imgFoto16,
        "IMG_FOTO17": imgFoto17,
        "IMG_FOTO18": imgFoto18,
        "IMG_FOTO19": imgFoto19,
        "IMG_FOTO20": imgFoto20,
      };
}
