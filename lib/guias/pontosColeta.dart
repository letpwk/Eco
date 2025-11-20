import 'package:ecoponto/guias/contato.dart';
import 'package:ecoponto/guias/informacoes.dart';
import 'package:ecoponto/guias/inicio.dart';
import 'package:ecoponto/guias/sobre.dart';
import 'package:flutter/material.dart';

class Pontos extends StatefulWidget {
  const Pontos({super.key});

  @override
  State<Pontos> createState() => _PontosState();
}

class _PontosState extends State<Pontos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 240),
      body: Column(
        children: [
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
          Container( //menu
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Encontre os Ecopontos mais próximos de você!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(49, 74, 32, 1),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row( //barra de pesquisa
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 350,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Digite o seu endereço",
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                              border: const OutlineInputBorder(),
                              suffixIcon: const Icon(Icons.search, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        SizedBox( //botão ordenar por
                          width: 160,
                          height: 48,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.black),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Ordenar por",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Center(
                    child: Container(
                      width: 950,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(
                        "lib/imagens/inicio.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    const SizedBox(height: 40),
                    _tituloSessao("Locais de Coleta por Tipo de Material"),
                    const SizedBox(height: 20),
                    _categoria(
                      "Plásticos e Papéis",
                      [
                        "Parque da Cidade — Av. Calama, Flodoaldo Pontes Pinto",
                        "Skate Parque — Av. Guaporé, Cuniã",
                        "USF Aponiã — Rua Andréia, 5383, Aponiã",
                        "Faculdade Católica — Av. Gov. Jorge Teixeira, 4100, Industrial",
                        "EMEI Ronilza Cordeiro — Rua João Paulo I, Novo Horizonte",
                        "Delegacia de Crimes Ambientais — Av. José Amador dos Reis, 3214, JK",
                      ],
                    ),
                    const SizedBox(height: 30),
                    _categoria(
                      "Vidro",
                      [
                        "Skate Parque — Av. Guaporé, Cuniã",
                        "Parque da Cidade — Av. Calama, Flodoaldo Pontes Pinto",
                      ],
                    ),
                    const SizedBox(height: 30),
                    _categoria(
                      "Metal",
                      [
                        "USF Aponiã — Rua Andréia, 5383, Aponiã",
                        "Faculdade Católica — Av. Gov. Jorge Teixeira, 4100, Industrial",
                      ],
                    ),
                    const SizedBox(height: 30),
                    _categoria(
                      "Orgânico",
                      [
                        "EMEI Ronilza Cordeiro — Rua João Paulo I, Novo Horizonte",
                      ],
                    ),
                    const SizedBox(height: 30),
                    _categoria(
                      "Eletrônicos",
                      [
                        "Delegacia de Crimes Ambientais — Av. José Amador dos Reis, 3214, JK",
                        "Faculdade Católica — Av. Gov. Jorge Teixeira, 4100, Industrial",
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
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
}

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

Widget _tituloSessao(String titulo) {
  return Text(
    titulo,
    style: const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(49, 74, 32, 1),
    ),
  );
}

Widget _categoria(String nome, List<String> locais) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        nome,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(49, 74, 32, 1),
        ),
      ),
      const SizedBox(height: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: locais
            .map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    "• $e",
                    style: const TextStyle(fontSize: 18),
                  ),
                ))
            .toList(),
      ),
    ],
  );
}
