import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final int valor;
  const Resultado({Key? key, required this.valor}) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void _voltar() {
    Navigator.pushNamed(context, "/");
  }

  var escolha = ["cara", "coroa"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/moeda_" + escolha[widget.valor] + ".png"),
              GestureDetector(
                onTap: _voltar,
                child: Image.asset("images/botao_voltar.png"),
              ),
            ],
          ),
        ));
  }
}
