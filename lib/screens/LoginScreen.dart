import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prueba/screens/HistorialScreen.dart';
import 'package:prueba/screens/RegisterScreen.dart';

void main(){
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

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

Widget cuerpo(context){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage('https://marketplace.canva.com/EAFjTH3TIXM/1/0/900w/canva-fondo-de-pantalla-para-tel%C3%A9fono-corazones-femenino-rosa-OFxrhfLu0Jc.jpg'),
      fit: BoxFit.cover)
    ),
    child: (Column(
      children: <Widget>[
        campoCorreo(),
        campoClave(),
        botonInicio(context),
        BotonRegister(context)
      ],
    )),
  );
}

final TextEditingController _correo = TextEditingController();
Widget campoCorreo() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: (TextField(
      controller: _correo,
      decoration: const InputDecoration(
          labelText: "Email",
          hintText: "Ingresa tu usuario o e-mail",
          hintTextDirection: TextDirection.ltr),
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
      obscureText: true,
      decoration: const InputDecoration(
          labelText: "Contraseña",
          hintText: "Ingresa tu contraseña",
          hintTextDirection: TextDirection.ltr),
    )),
  );
}
Widget botonInicio(context) {
  return (FilledButton(
      onPressed: () {
        login(context);
      },
      child: const Text("Ingresar")));
}
Widget BotonRegister(context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Register()));
      },
      child: const Text("Registrarse"));
}

Future<void> login(context) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _correo.text, password: _contrasenia.text);
    ////////////////////
    
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Historial()));

    ///////////////////
  } on FirebaseAuthException catch (e) {
   showDialog(context: context, builder: (context){
    return(
      AlertDialog(
        title: Text("Error"),
        content: Text("Usuario no registrado"),
        actions: <Widget>[
          TextButton(onPressed:()=>Navigator.of(context).pop(),
          child: const Text('Aceptar'))
        ],
      )
    );
  }); 
  }
}
