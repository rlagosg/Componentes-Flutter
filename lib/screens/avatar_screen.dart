import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keanu Reeves'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey[900],
              child: const Text('KR'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage(
              'https://www.terra.com.mx/u/fotografias/m/2022/6/16/f800x450-42482_93928_5246.jpg'),
        ),
      ),
    );
  }
}
