import 'package:ecoponto/contato.dart';
import 'package:ecoponto/informacoes.dart';
import 'package:ecoponto/pontosColeta.dart';
import 'package:ecoponto/sobre.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  final List<String> itensMenu = [
    "Início",
    "Informações",
    "Contato",
    "Pontos de Coleta",
    "Sobre",
  ];

  final List<Widget> telas = const [
    Inicio(),
    Informacoes(),
    Contato(),
    Pontos(),
    Sobre(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // container verde no topo
          Container(
            height: 100,
            width: double.infinity,
            color: Color.fromRGBO(49, 74, 32, 1),
            alignment: Alignment.center,
            child: const Text(
              "Eco+",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // menu
          Container(
            height: 55,
            color: Color.fromRGBO(106, 142, 75, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _menuButton(context, "Início", const Inicio()),
                _menuButton(context, "Informações", const Informacoes()),
                _menuButton(context, "Pontos de Coleta", const Pontos()),
                _menuButton(context, "Contato", const Contato()),
                _menuButton(context, "Sobre", const Sobre()),
              ],
            ),
          ),

          // CONTEÚDO DA HOME (se quiser colocar algo)
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Descubra onde descartar corretamente seus resíduos", style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // widget do menu
  Widget _menuButton(BuildContext context, String label, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
