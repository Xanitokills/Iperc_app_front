import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get dropDownOptions {
  List<DropdownMenuItem<String>> tipoDeINspeccion = const [
    DropdownMenuItem(value: "", child: Text("Seleccione")),
    DropdownMenuItem(value: "Averiado", child: Text("Averiado")),
    DropdownMenuItem(value: "No Instalado", child: Text("No Instalado")),
    DropdownMenuItem(value: "Reubicado", child: Text("Reubicado")),
    DropdownMenuItem(value: "Siniestrado", child: Text("Siniestrado")),
    DropdownMenuItem(value: "Operativo", child: Text("Operativo")),
    DropdownMenuItem(value: "Inexistente", child: Text("Inexistente")),
    DropdownMenuItem(value: "Inoperativo", child: Text("Inoperativo")),
    DropdownMenuItem(value: "Retirado", child: Text("Retirado")),
    DropdownMenuItem(value: "Regular", child: Text("Regular")),
    DropdownMenuItem(value: "Por Registrar", child: Text("Por Registrar")),
  ];
  return tipoDeINspeccion;
}

List<Map<String, dynamic>> listValuesDropDown = [
  {'value': '', 'label': 'TX TELEVISIÓN'},
  {'value': '', 'label': 'MODULADOR TV'},
  {'value': '', 'label': 'RADIO FM'},
  {'value': '', 'label': 'TRANSMISOR HF'},
  {'value': '', 'label': 'ANTENA TV'},
  {'value': '', 'label': 'ANTENA FM'},
  {'value': '', 'label': 'RECEPTOR SATELITAL'},
  {'value': '', 'label': 'ANTENA PARABOLICA'},
  {'value': '', 'label': 'POZO TIERRA'},
  {'value': '', 'label': 'PARARRAYOS'},
  {'value': '', 'label': 'TORRE SOPORTE'},
];

List<Map<String, dynamic>> listValueImages = [
  {'label': '1. Foto Frontal\n de Estación', 'value': ''},
  {'label': '2. Acta de\n Inspección\n de Ficha', 'value': ''},
  {'label': '3. Toma de Torre', 'value': ''},
  {'label': '4. Rack Completo', 'value': ''},
  {'label': '5. Transmisor', 'value': ''},
  {'label': '6. Modulador', 'value': ''},
  {'label': 'Imagen 7', 'value': ''},
  {'label': 'Imagen 8', 'value': ''},
  {'label': 'Imagen 9', 'value': ''},
  {'label': 'Imagen 10', 'value': ''},
  {'label': 'Imagen 11', 'value': ''},
  {'label': 'Imagen 12', 'value': ''},
  {'label': 'Imagen 13', 'value': ''},
  {'label': 'Imagen 14', 'value': ''},
  {'label': 'Imagen 15', 'value': ''},
  {'label': 'Imagen 16', 'value': ''},
  {'label': 'Imagen 17', 'value': ''},
  {'label': 'Imagen 18', 'value': ''},
  {'label': 'Imagen 19', 'value': ''},
  {'label': 'Imagen 20', 'value': ''},
];
