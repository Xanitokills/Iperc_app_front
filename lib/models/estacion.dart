import 'dart:convert';

Estacion inspectionFromJson2(String str) => Estacion.fromJson(json.decode(str));

String inspectionToJson2(Estacion data) => json.encode(data.toJson());

class Estacion {
  bool status;
  List<EstacionElement> estacion2;

  Estacion({
    required this.status,
    required this.estacion2,
  });

/*   factory Estacion.fromJson(Map<String, dynamic> json) => Estacion(
        status: json["status"],
        estacion2: json["estacion"] != null
            ? List<EstacionElement>.from(
                json["estacion"].map((x) => EstacionElement.fromJson(x)),
              )
            : [],
      ); */
  factory Estacion.fromJson(Map<String, dynamic> json) => Estacion(
        status: json["status"],
        estacion2: List<EstacionElement>.from(
            json["data"].map((x) => EstacionElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "estacion": List<dynamic>.from(estacion2.map((x) => x.toJson())),
      };
}

class EstacionElement {
  String ideEstacion;
  int ideProyecto;
  String codCpacc;
  String tipTorre;
  int numTorreAltura;
  String tipPozoTierra;
  int numImpedancia;
  String estPozoTierra;
  String tipPararrayos;
  String tipCobreDesnudo;
  String estPararrayos;
  int numLatitud;
  int numLongitud;
  int numAltitud;
  String estTxTelevision;
  String estModuladorTv;
  String estRadioFm;
  String estTransmisorHf;
  String estAntenaTv;
  String estAntenaFm;
  String estReceptorSatelital;
  String estAntenaParabolica;
  String desObservacion;
  ImgFoto imgFoto1;
  ImgFoto imgFoto2;
  String estEstacion;
  String userInsert;
  DateTime fechaInsert;
  String userUpdate;
  DateTime fechaUpdate;

  EstacionElement({
    required this.ideEstacion,
    required this.ideProyecto,
    required this.codCpacc,
    required this.tipTorre,
    required this.numTorreAltura,
    required this.tipPozoTierra,
    required this.numImpedancia,
    required this.estPozoTierra,
    required this.tipPararrayos,
    required this.tipCobreDesnudo,
    required this.estPararrayos,
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
    required this.desObservacion,
    required this.imgFoto1,
    required this.imgFoto2,
    required this.estEstacion,
    required this.userInsert,
    required this.fechaInsert,
    required this.userUpdate,
    required this.fechaUpdate,
  });

  factory EstacionElement.fromJson(Map<String, dynamic> json) =>
      EstacionElement(
        ideEstacion: json["IDE_ESTACION"],
        ideProyecto: json["IDE_PROYECTO"],
        codCpacc: json["COD_CPACC"],
        tipTorre: json["TIP_TORRE"],
        numTorreAltura: json["NUM_TORRE_ALTURA"],
        tipPozoTierra: json["TIP_POZO_TIERRA"],
        numImpedancia: json["NUM_IMPEDANCIA"],
        estPozoTierra: json["EST_POZO_TIERRA"],
        tipPararrayos: json["TIP_PARARRAYOS"],
        tipCobreDesnudo: json["TIP_COBRE_DESNUDO"],
        estPararrayos: json["EST_PARARRAYOS"],
        numLatitud: json["NUM_LATITUD"],
        numLongitud: json["NUM_LONGITUD"],
        numAltitud: json["NUM_ALTITUD"],
        estTxTelevision: json["EST_TX_TELEVISION"],
        estModuladorTv: json["EST_MODULADOR_TV"],
        estRadioFm: json["EST_RADIO_FM"],
        estTransmisorHf: json["EST_TRANSMISOR_HF"],
        estAntenaTv: json["EST_ANTENA_TV"],
        estAntenaFm: json["EST_ANTENA_FM"],
        estReceptorSatelital: json["EST_RECEPTOR_SATELITAL"],
        estAntenaParabolica: json["EST_ANTENA_PARABOLICA"],
        desObservacion: json["DES_OBSERVACION"],
        imgFoto1: ImgFoto.fromJson(json["IMG_FOTO1"]),
        imgFoto2: ImgFoto.fromJson(json["IMG_FOTO2"]),
        estEstacion: json["EST_ESTACION"],
        userInsert: json["userInsert"],
        fechaInsert: DateTime.parse(json["fechaInsert"]),
        userUpdate: json["userUpdate"],
        fechaUpdate: DateTime.parse(json["fechaUpdate"]),
      );

  Map<String, dynamic> toJson() => {
        "IDE_ESTACION": ideEstacion,
        "IDE_PROYECTO": ideProyecto,
        "COD_CPACC": codCpacc,
        "TIP_TORRE": tipTorre,
        "NUM_TORRE_ALTURA": numTorreAltura,
        "TIP_POZO_TIERRA": tipPozoTierra,
        "NUM_IMPEDANCIA": numImpedancia,
        "EST_POZO_TIERRA": estPozoTierra,
        "TIP_PARARRAYOS": tipPararrayos,
        "TIP_COBRE_DESNUDO": tipCobreDesnudo,
        "EST_PARARRAYOS": estPararrayos,
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
        "DES_OBSERVACION": desObservacion,
        "IMG_FOTO1": imgFoto1.toJson(),
        "IMG_FOTO2": imgFoto2.toJson(),
        "EST_ESTACION": estEstacion,
        "userInsert": userInsert,
        "fechaInsert": fechaInsert.toIso8601String(),
        "userUpdate": userUpdate,
        "fechaUpdate": fechaUpdate.toIso8601String(),
      };
}

class ImgFoto {
  String type;
  List<int> data;

  ImgFoto({
    required this.type,
    required this.data,
  });

  factory ImgFoto.fromJson(Map<String, dynamic> json) => ImgFoto(
        type: json["type"],
        data: List<int>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}
