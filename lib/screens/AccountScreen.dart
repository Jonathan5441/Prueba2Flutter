import 'package:flutter/material.dart';

void main() {
  runApp(Cuenta());
}

class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
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
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage('https://marketplace.canva.com/EAFHI65r5mM/1/0/900w/canva-fondo-de-pantalla-tel%C3%A9fono-abstracto-pastel-xBWuYQ9y_78.jpg'),
      fit: BoxFit.cover)
    ),
    child: (Column(
      children: <Widget>[
        imagenGato(),
        cuenta(),
        total()
      ],
    )),
  );
}

Widget imagenGato() {
  return Image.network(
      'https://www.infobae.com/new-resizer/RXRFDS9BFnPvV3rtuZgMnqHfgyo=/1200x1200/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/VCVWSMNYEFDCXADXEIP7JZXIXY.jpg');
}

Widget cuenta() {
  return const Text("N° de cuenta: 14568621");
}

Widget total() {
  return const Text("Saldo de la cuenta: 1200");
}
