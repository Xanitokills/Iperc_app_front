import 'package:flutter/material.dart';

class StepForm extends StatefulWidget {
  @override
  _StepFormState createState() => _StepFormState();
}

class _StepFormState extends State<StepForm> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario Paso a Paso'),
      ),
      body: Stepper(
        type: stepperType,
        physics: ScrollPhysics(),
        currentStep: _currentStep,
        onStepTapped: (step) => goTo(step),
        onStepContinue: next,
        onStepCancel: cancel,
        steps: <Step>[
          Step(
            title: Text('Alta '),
            content: Column(
              children: <Widget>[
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Tag (Prefijo)'),
                  items: ['Prefijo 1', 'Prefijo 2', 'Prefijo 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Tag (Centro)'),
                  items: ['Centro 1', 'Centro 2', 'Centro 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Descripción'),
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Disciplina'),
                  items: ['Disciplina 1', 'Disciplina 2', 'Disciplina 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep > 0 ? StepState.complete : StepState.editing,
          ),
          Step(
            title: Text('IPERC'),
            content: Column(
              children: <Widget>[
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Iterlock Seguridad'),
                  items: ['Interlock 1', 'Interlock 2', 'Interlock 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Responsable'),
                  items: ['Responsable 1', 'Responsable 2', 'Responsable 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Probabilidad'),
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Impacto'),
                  items: ['Bajo', 'Medio', 'Alto']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ],
            ),
            isActive: _currentStep >= 1,
            state: _currentStep > 1 ? StepState.complete : StepState.editing,
          ),
          Step(
            title: Text('Autorización'),
            content: Column(
              children: <Widget>[
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Aprobador'),
                  items: ['Aprobador 1', 'Aprobador 2', 'Aprobador 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Ejecutor'),
                  items: ['Ejecutor 1', 'Ejecutor 2', 'Ejecutor 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Autorización'),
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Tipo de Forzado'),
                  items: ['Tipo 1', 'Tipo 2', 'Tipo 3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ],
            ),
            isActive: _currentStep >= 2,
            state: _currentStep > 2 ? StepState.complete : StepState.editing,
          ),
        ],
      ),
    );
  }

  void next() {
    _currentStep + 1 != 3 ? goTo(_currentStep + 1) : null;
  }

  void cancel() {
    _currentStep > 0 ? goTo(_currentStep - 1) : null;
  }

  void goTo(int step) {
    setState(() => _currentStep = step);
  }
}
