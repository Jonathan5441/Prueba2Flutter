import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:prueba/screens/LoginScreen.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({super.key});

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
  return Container(
    child: (Column(
      children: <Widget>[
        Text("Welcome"),
        campoNombres(),
        campoCorreo(),
        campoClave(),
        botonRegistro(context)
      ],
    )),
  );
}

final TextEditingController _nombres = TextEditingController();
Widget campoNombres() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        const Text("Nombre y Apellido:"),
        (TextField(
          controller: _nombres,
          decoration:
              const InputDecoration(hintText: "Ingresa tu nombre y apellido"),
        )),
      ],
    ),
  );
}

final TextEditingController _correo = TextEditingController();
Widget campoCorreo() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: (TextField(
      controller: _correo,
      decoration: const InputDecoration(hintText: "Ingresa tu e-mail"),
      keyboardType: TextInputType.emailAddress,
    )),
  );
}

final TextEditingController _contrasenia = TextEditingController();
Widget campoClave() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: (TextField(
      controller: _contrasenia,
      decoration: const InputDecoration(hintText: "Ingresa tu contraseña"),
    )),
  );
}

Widget botonRegistro(context) {
  return (FilledButton(
      onPressed: () {
        register(context);
        guardar();
      },
      child: const Text("Registrarse")));
}

Future<void> register(context) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _correo.text,
      password: _contrasenia.text,
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

Future<void> guardar() async{
  DatabaseReference ref = FirebaseDatabase.instance.ref("users/"+_nombres.text);
    await ref.set({
    "nombre": _nombres.text,
    "correo": _correo.text
  });
}