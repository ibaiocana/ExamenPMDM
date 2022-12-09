import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = const ['Pistas', 'Monitores', 'Reservas'];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
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
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.account_box_rounded),
                  title: Text(options[index]),
                  onTap: () {
                    Navigator.pushNamed(context, options[index]);
                    ;
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
