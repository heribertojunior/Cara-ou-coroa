import 'dart:math';

import 'package:caraoucoroa/resultado.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/resultado": (context) => Resultado(valor: Random().nextInt(2)),
    },
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
