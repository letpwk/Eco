import 'package:ecoponto/guias/contato.dart';
import 'package:ecoponto/guias/informacoes.dart';
import 'package:ecoponto/guias/inicio.dart';
import 'package:ecoponto/guias/pontosColeta.dart';
import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 240),

      body: Column(
        children: [
          // TOPO
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

          // MENU
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _section(
                      title: "Nossa missão",
                      text:
                          "Promover a conscientização ambiental por meio da localização de ecopontos em Porto Velho, incentivando o descarte correto de materiais recicláveis e contribuindo para um futuro mais sustentável.",
                    ),

                    const SizedBox(height: 35),

                    _section(
                      title: "Nossa história",
                      text:
                          "O Eco+ nasceu como um projeto educacional voltado para facilitar o acesso à informação sobre descarte consciente. Surgiu da vontade de unir tecnologia e sustentabilidade para transformar pequenas ações em grandes mudanças.",
                    ),

                    const SizedBox(height: 35),

                    _section(
                      title: "Nossa equipe",
                      text:
                          "Somos um grupo de estudantes comprometidas com o meio ambiente e apaixonadas por inovação. Trabalhamos juntos para criar soluções que aproximem a comunidade da prática da reciclagem.",
                    ),

                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),

          // RODAPÉ
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

  // Componente da seção
  Widget _section({required String title, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(106, 142, 75, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            height: 1.4,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  // Botões do menu
  Widget _menuButton(BuildContext context, String label, Widget page) {
    bool isHovered = false;
    return StatefulBuilder(
      builder: (context, setState) {

        return MouseRegion (
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          
          child: GestureDetector(
            onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: isHovered ? 18 : 12,
            vertical: isHovered ? 12 : 8,
          ),
          decoration: BoxDecoration(color: isHovered ? const Color.fromARGB(255, 79, 109, 54) : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          ), 
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
        );
      },
    );
  }
}