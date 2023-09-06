import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practica1_moviles/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
   Home({super.key});

  final data = [
    CardPlanetData(
      title: 'UNIVERSIDAD', 
      subtitle: 'TECNOLÓGICO NACIONAL DE MÉXICO EN CELAYA', 
      image: const AssetImage("assets/images/logo.png"), 
      backgroundColor: Color.fromARGB(255, 5, 75, 38), 
      titleColor: Colors.white, 
      subtitleColor: Colors.yellow,
      background: LottieBuilder.asset("assets/animations/json1.json"),
    ),
    CardPlanetData(
      title: 'CARRERA', 
      subtitle: 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', 
      image: const AssetImage("assets/images/compu.jpg"), 
      backgroundColor: Colors.white, 
      titleColor: Colors.purple, 
      subtitleColor: const Color.fromRGBO(71, 59, 117, 1),
      background: LottieBuilder.asset("assets/animations/json2.json"),
    ),
    CardPlanetData(
      title: 'ALUMNO', 
      subtitle: 'MONTENEGRO ZÚÑIGA MARCO ANTONIO - 19030546', 
      image: const AssetImage("assets/images/Marco.jpeg"), 
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1), 
      titleColor: Colors.yellow, 
      subtitleColor: Colors.red,
      background: LottieBuilder.asset("assets/animations/json3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {        //, double value
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
