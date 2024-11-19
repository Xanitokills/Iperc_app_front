// ignore_for_file: use_build_context_synchronously, avoid_print, depend_on_referenced_packages
import 'dart:convert';
import 'dart:math';
import 'package:app_iperc/constants/urls.dart';
import 'package:app_iperc/models/authmodel.dart';
import 'package:app_iperc/omboard/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity/connectivity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:app_iperc/forms/form1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _connectionStatus = 'Unknown';
  final _globalKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool vis = true;
  final List<String> backgrounds = ['assets/login1.webp'];

  @override
  void initState() {
    super.initState();
    _checkConnection();
  }

  Future<void> _checkConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      if (connectivityResult == ConnectivityResult.mobile) {
        _connectionStatus = 'Mobile data';
      } else if (connectivityResult == ConnectivityResult.wifi) {
        _connectionStatus = 'WiFi';
      } else {
        _connectionStatus = 'No connection';
        _showNoConnectionSnackBar();
      }
    });
  }

  void _showNoConnectionSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color.fromARGB(255, 228, 58, 24),
        content: Text('No tienes conexión a internet'),
        duration: Duration(seconds: 3),
      ),
    );
  }

  Future<AutModel> login() async {
    final String usuario = _emailController.text;
    final String password = _passwordController.text;
    var url = isLocal ? UrlApiLocal : UrlApi;
    print(url);
    try {
      final response = await http.post(
        Uri.parse('$url/auth/login'),
        headers: <String, String>{'Content-Type': 'application/json'},
        body: json.encode({'usuario': usuario, 'password': password}),
      );
      return authFromJson(response.body);
    } catch (e) {
      print(e);
      return AutModel(message: 'Error', status: false, user: null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              _buildBackgroundImage(),
              _buildLoginForm(),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    String randomBackground = getRandomBackground();
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
        image: DecorationImage(
          image: AssetImage(randomBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _buildEmailTextField(),
          _buildPasswordTextField(),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return InkWell(
      onTap: () async {
        final usuario = _emailController.text;
        final password = _passwordController.text;

        /*   if (usuario.isEmpty) {
          Fluttertoast.showToast(msg: 'Usuario vacío');
          return;
        }
        if (password.isEmpty) {
          Fluttertoast.showToast(msg: 'Contraseña vacía');
          return;
        }

        final res = await login();

        if (res.status == true) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('id', res.user!.id.toString());
          prefs.setString('user', res.user!.usuario.toString());
          prefs.setString('nombre', res.user!.nombre.toString());
          prefs.setString('cargo', res.user!.cargo.toString()); */

        // Navegar a la siguiente pantalla
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => StepForm()));
/*         } else {
          Fluttertoast.showToast(
            msg: res.message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } */
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 54,
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
            colors: [Color(0xffF5591F), Color(0xffF2861E)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: Color.fromARGB(255, 241, 161, 161),
            ),
          ],
        ),
        child: const Text(
          "INGRESAR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(50),
        ),
        prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 4, 107, 191)),
        hintText: "Ingrese su Usuario",
        hintStyle: TextStyle(color: Color.fromARGB(255, 42, 73, 119)),
        filled: true,
        fillColor: Color.fromARGB(255, 224, 224, 224),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Column(
      children: [
        const SizedBox(height: 10),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50),
            ),
            prefixIcon:
                Icon(Icons.key, color: Color.fromARGB(255, 4, 107, 191)),
            hintText: "Ingrese Contraseña",
            hintStyle: TextStyle(color: Color.fromARGB(255, 42, 73, 119)),
            filled: true,
            fillColor: Color.fromARGB(255, 224, 224, 224),
            suffixIcon: IconButton(
              icon: Icon(vis ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  vis = !vis;
                });
              },
            ),
          ),
          cursorColor: Color.fromARGB(255, 4, 107, 191),
          obscureText: vis,
        ),
      ],
    );
  }

  String getRandomBackground() {
    Random random = Random();
    int index = random.nextInt(backgrounds.length);
    return backgrounds[index];
  }
}
