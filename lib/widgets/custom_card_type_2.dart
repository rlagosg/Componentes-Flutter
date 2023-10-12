import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? name;
  const CustomCardType2({Key? key, required this.imageURL, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //redondiar bordes
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //sombra a la imagen
      elevation: 10,
      //color de sombra
      shadowColor: AppTheme.primary.withOpacity(0.5),
      //lista de elementos
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageURL),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'sin titulo'))
      ]),
    );
  }
}
