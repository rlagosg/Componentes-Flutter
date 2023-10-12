import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            elevation: 5,
            title: const Text('Hellow Word'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
                width: 20,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context)),
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Hellow Word'),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            Text('Este es el contenido de la alerta'),
            SizedBox(
              height: 10,
              width: 20,
            ),
            FlutterLogo(
              textColor: Colors.red,
              size: 100,
            )
          ]),
          actions: [
            TextButton(
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () => Navigator.pop(context)),
            TextButton(
                child: const Text('ok'),
                onPressed: () => Navigator.pop(context)),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
