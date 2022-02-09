import 'dart:math';

import 'package:caraoucoroa/resultado.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _resultado() {
    Navigator.pushNamed(context, "/resultado");
  }

  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      Navigator.pushNamed(context, "/resultado");
    });
    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              GestureDetector(
                onTap: _resultado,
                child: Image.asset("images/botao_jogar.png"),
              ),
            ],
          ),
        ));
  }
}
