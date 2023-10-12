import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'IronMan',
    'Deadpool',
    'Black Adam',
    'Flash',
    'Batman',
    'Malcolm'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
        //elevation: 0.2,
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (e) => ListTile(
                  leading: const Icon(Icons.access_time_filled_outlined),
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
          // ListTile(
          //   leading: Icon(Icons.access_time_filled_outlined),
          //   title: Text('hola mundo'),
          // ),
        ],
      ),
    );
  }
}
