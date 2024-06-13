import 'package:flutter/material.dart';
import 'package:prueba/screens/AccountScreen.dart';

void main(){
  runApp(Historial());
}

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home()
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indice =0;
  @override
  Widget build(BuildContext context) {
    List <Widget> screens = [cuerpo(), Cuenta()];
    return Scaffold(
      appBar: AppBar(title: const Text("Historial"),
      ),
      body: screens[indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (valor){
          setState(() {
            indice=valor;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: 'Historial'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Cuenta')
        ],
      ),
    );
  }
}

Widget cuerpo(){
  return Center(
    child: Container(
      decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage('https://marketplace.canva.com/EAE8rnSR--8/1/0/900w/canva-fondo-de-pantalla-para-telefono-natural-rosa-_ThrS375s80.jpg'),
      fit: BoxFit.cover)
    ),
      child: (Column(
        children: <Widget>[
          SafeArea(child: retiro()),
          SafeArea(child: retiro2()),
          SafeArea(child: retiro3())
        ],
      )),
    ),
  );
}

Widget retiro(){
  return Row(
    children: const [
      Text("Retiro:500 "),
      Text("Tipo:Impuestos "),
      Text("Saldo:800"),
    ],
  );
}
Widget retiro2(){
  return Row(
    children: const [
      Text("Retiro:50 "),
      Text("Tipo:Impuestos "),
      Text("Saldo:450"),
    ],
  );
}
Widget retiro3(){
  return Row(
    children: const [
      Text("Retiro:700 "),
      Text("Tipo:Impuestos "),
      Text("Saldo:1200"),
    ],
  );
}