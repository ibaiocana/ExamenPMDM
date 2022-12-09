import 'package:flutter/material.dart';

class card_custom_widget18 extends StatelessWidget {
  final String texto;
  final String ruta;
  const card_custom_widget18({
    Key? key,
    required this.texto,
    required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(ruta),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(texto),
            subtitle: const Text(
                "Eiusmod minim adipisicing exercitation amet ullamco nisi eu. Consequat ut ullamco laborum ex sit fugiat elit duis officia est nisi amet. Qui eu esse Lorem sit excepteur et."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Reservar'))
            ],
          )
        ],
      ),
    );
  }
}
