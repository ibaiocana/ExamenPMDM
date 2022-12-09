import 'package:examenpmdm18/theme/app_theme18.dart';
import 'package:flutter/material.dart';
import 'package:examenpmdm18/widgets/widgets18.dart';

class PistasScreen extends StatelessWidget {
  const PistasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg"),
            ),
          )
        ],
      ),
      body: Column(
        children: const [
          card_custom_widget18(
            ruta: "https://allforpadel.com/img/cms/pistas/fx2-1.jpg",
            texto: "Pista de pádel",
          ),
          SizedBox(
            height: 10,
          ),
          card_custom_widget18(
            ruta:
                "https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg",
            texto: "Piscina Cubierta",
          ),
          SizedBox(
            height: 10,
          ),
          card_custom_widget18(
            ruta:
                "https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg",
            texto: "Campo de Baloncesto",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
