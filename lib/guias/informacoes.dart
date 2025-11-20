import 'package:ecoponto/guias/contato.dart';
import 'package:ecoponto/guias/inicio.dart';
import 'package:ecoponto/guias/pontosColeta.dart';
import 'package:ecoponto/guias/sobre.dart';
import 'package:flutter/material.dart';

class Informacoes extends StatefulWidget {
  const Informacoes({super.key});

  @override
  State<Informacoes> createState() => _InformacoesState();
}

class _InformacoesState extends State<Informacoes> {
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

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      width: 420,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(
                        "lib/imagens/informacoes.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: Color.fromRGBO(106, 142, 75, 1),
                            thickness: 4,
                          ),
                        ),
                      ),
                      Text(
                        "Por que é importante separar o lixo?",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(49, 74, 32, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: SizedBox(
                      width: 700,
                      child: Text(
                        "Separar o lixo corretamente contribui para a preservação do meio ambiente,\nreduz a contaminação do solo e da água, e permite a reciclagem de materiais que\nseriam descartados. O lixo orgânico pode ser compostado, enquanto o lixo reciclável\npode ser reaproveitado pela indústria.\n\nAlém disso, a separação correta colabora com o trabalho dos catadores e cooperativas de reciclagem, promovendo inclusão social e geração de renda.",
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: Color.fromRGBO(106, 142, 75, 1),
                            thickness: 4,
                          ),
                        ),
                      ),
                      Text(
                        "Dicas para reduzir o lixo doméstico",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(49, 74, 32, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: SizedBox(
                      width: 700,
                      child: Text(
                        "- Evite produtos com embalagens excessivas.\n- Use sacolas reutilizáveis ao fazer compras.\n- Separe lixo reciclável e orgânico em casa.\n- Doe roupas, móveis e eletrônicos em bom estado.\n- Reutilize potes, papéis e objetos sempre que possível",
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: Color.fromRGBO(106, 142, 75, 1),
                            thickness: 4,
                          ),
                        ),
                      ),
                      Text(
                        "Tipos de Lixo e Destino Correto",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(49, 74, 32, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: SizedBox(
                      width: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(106, 142, 75, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Eletrônicos',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Entregue em pontos de coleta para descarte seguro.',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(106, 142, 75, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Orgânicos',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Use na compostagem e produza adubo natural.',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(106, 142, 75, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Metais',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Leve à coleta seletiva ou ferros-velhos para reciclagem.',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(106, 142, 75, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Vidros',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Descarte em pontos de coleta para reutilização.',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(106, 142, 75, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Papéis',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Mantenha limpos e secos antes da reciclagem.',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 50),
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
            ),
          ),
        ],
      ),
    );
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
            child: Container(
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
