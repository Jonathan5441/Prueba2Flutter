import 'package:flutter/material.dart';
import 'package:prueba/screens/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba'),
      ),
      body: cuerpo(context),
    );
  }
}

Widget cuerpo(context) {
  return Center(
    child: Container(
      child: (Column(
        children: <Widget>[
          const Text("Jonathan Carrasco"),
          const Text("Jonathan5441"),
          BotonLogin(context)
        ],
      )),
    ),
  );
}

Widget BotonLogin(context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
      },
      child: const Text("Login"));
}
