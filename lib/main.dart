import 'package:app_iperc/login/Login.dart';
import 'package:app_iperc/omboard/onboarding_screen.dart';
/* import 'package:appproyecto2/Login/Login.dart';
 */ /* import 'package:appproyecto2/Login/Sign_Up.dart';
/*  */import 'package:appproyecto2/Splashscreen/Splash.dart';
 */ /* import 'package:appproyecto2/home/Menu_Navegacion.dart';
 */
import 'package:flutter/material.dart';
import 'dart:async';
// Shared preferences
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final user = prefs.getString('id') ?? '';
  runApp(MyApp(user: user));
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
    required this.user,
  }) : super(key: key);
  final user;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
/*   final List<String> listaItems = ['Elemento 1', 'Elemento 2', 'Elemento 3']; */

  String? get title => null;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Registro Inspecciones',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      /* home: SplashScreen(), */

      home: widget.user == '' ? OnboardingScreen() : null,

      /*      home: widget.user == '' ? LoginScreen() : MenuNavegacion(), */
      /*  routes: {
          "splash": (context) => SplashScreen(),
          "home": (context) => MenuNavegacion()
        } */
/*       home: ListaItems(listaItems: listaItems), */
    );
  }
}
