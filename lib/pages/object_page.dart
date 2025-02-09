import 'package:flutter/material.dart';

class ObjectPage extends StatefulWidget {
  @override
  State<ObjectPage> createState() => _ObjectPageState();
}

class _ObjectPageState extends State<ObjectPage> {
  List<Text> miLista = [
    Text(
      "Elemento 1",
    ),
    Text(
      "Elemento 2",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ObjectPage"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                miLista.add(
                  Text(
                    "Elemento ${miLista.length + 1}",
                  ),
                );
                setState(() {});
              },
              child: Text(
                "Add",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...miLista,
          ],
        ),
      ),
    );
  }
}
