import 'package:ecoponto/guias/contato.dart';
import 'package:ecoponto/guias/informacoes.dart';
import 'package:ecoponto/guias/pontosColeta.dart';
import 'package:ecoponto/guias/sobre.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 240), // fundo bege CLARO igual imagem

      body: Column(
        children: [
          // TOPO VERDE
          Container(
            height: 100,
            width: double.infinity,
            color: const Color.fromRGBO(49, 74, 32, 1),
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

          // MENU VERDE CLARO
          Container(
            height: 55,
            color: const Color.fromRGBO(106, 142, 75, 1),
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

          // CONTEÚDO
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),

                  const Text(
                    "Descubra onde descartar corretamente seus resíduos",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(49, 74, 32, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 20),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Os ecopontos são locais adequados para o descarte de materiais recicláveis, eletrônicos, "
                      "entulhos e outros resíduos específicos. Esta plataforma ajuda você a localizar ecopontos "
                      "em Porto Velho de forma simples e rápida.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // IMAGEM DO MAPA
                  Center(
                    child: Container(
                      width: 600,
                      height: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(
                        "assets/mapa.png", // coloque sua imagem aqui
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),

          // RODAPÉ VERDE ESCURO
          Container(
            height: 50,
            width: double.infinity,
            color: const Color.fromRGBO(49, 74, 32, 1),
            alignment: Alignment.center,
            child: const Text(
              "Projeto Educacional • Desenvolvido para conscientização ambiental em Porto Velho",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  // BOTÕES DO MENU
  Widget _menuButton(BuildContext context, String label, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
