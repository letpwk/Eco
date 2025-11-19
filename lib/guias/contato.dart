import 'package:ecoponto/guias/informacoes.dart';
import 'package:ecoponto/guias/inicio.dart';
import 'package:ecoponto/guias/pontosColeta.dart';
import 'package:ecoponto/guias/sobre.dart';
import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  const Contato({super.key});

  @override
  State<Contato> createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 249, 244, 229),

    body: Column(
      children: [

        // TOPO
        Container(
          height: 70,
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
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  // TEXTO ESQUERDA
                  SizedBox(
                    width: 420,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Quer entrar em contato\ncom a gente?",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(49, 74, 32, 1),
                          ),
                        ),
                        SizedBox(height: 22),
                        Text(
                          "Se você tem alguma dúvida em relação aos EcoPontos, "
                          "ou algo do tema de descarte, envie sua mensagem pelo "
                          "formulário ao lado e vamos bater um papo sobre :)",
                          style: TextStyle(
                            fontSize: 20,
                            height: 1.4,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // FORMULÁRIO
                  SizedBox(
                    width: 420,
                    child: Column(
                      children: [

                        // NOME
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Digite o seu nome*",
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(49, 74, 32, 1),
                                width: 2,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(49, 74, 32, 1),
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // EMAIL
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Digite o seu e-mail*",
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(49, 74, 32, 1),
                                width: 2,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(49, 74, 32, 1),
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // TEXTO LONGO
                        TextField(
                          maxLines: 6,
                          decoration: const InputDecoration(
                            hintText: "Como podemos te ajudar?*",
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(12),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(49, 74, 32, 1),
                                width: 2,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(49, 74, 32, 1),
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // BOTÃO ENVIAR
                        SizedBox(
                          width: 120,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(49, 74, 32, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Enviar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // RODAPÉ
        Container(
          height: 55,
          width: double.infinity,
          color: const Color.fromRGBO(49, 74, 32, 1),
          alignment: Alignment.center,
          child: const Text(
            "Projeto Educacional - Desenvolvido para conscientização ambiental em Porto Velho",
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}


// BOTÕES DO MENU COM HOVER
Widget _menuButton(BuildContext context, String label, Widget page) {
  bool isHovered = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),

        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => page));
          },

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            padding: EdgeInsets.symmetric(
              horizontal: isHovered ? 18 : 12,
              vertical: isHovered ? 12 : 8,
            ),
            decoration: BoxDecoration(
              color: isHovered
                  ? const Color.fromARGB(255, 79, 109, 54)
                  : Colors.transparent,
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