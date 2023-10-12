import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 20,
              width: 25,
            ),
            CustomCardType2(
                imageURL:
                    'https://media.vogue.es/photos/5d3863775a36550008753bd8/2:3/w_2560%2Cc_limit/000-Keanu-Moments-In-Film-Vogueint-July16-Alamy.jpg',
                name: 'Keanu papucho Reeves!'),
            SizedBox(
              height: 20,
              width: 20,
            ),
            CustomCardType2(
              imageURL:
                  'https://media.revistavanityfair.es/photos/60e8354270839211f5444512/master/w_1600%2Cc_limit/164657.jpg',
              name: 'Keanu papucho Reeves!',
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            CustomCardType2(
              imageURL:
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/keanu-reeves-1561358245.jpg',
              name: 'Keanu papucho Reeves love you',
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            CustomCardType2(
              imageURL:
                  'https://i.guim.co.uk/img/media/d080da48fee755dd1d201685c07694e8b3cd189c/0_356_2800_1680/500.jpg?quality=85&auto=format&fit=max&s=f20d40063182be2569a31842c958068d',
              //name: 'Keanu papucho Reeves love you',
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            CustomCardType2(
              imageURL:
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/photo-of-keanu-reeves-news-photo-1576621075.jpg',
              //name: 'Keanu papucho Reeves love you',
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            CustomCardType2(
              imageURL:
                  'https://media.glamour.com/photos/5cf2a8dcea090e47b8e89a3f/master/w_1600%2Cc_limit/GettyImages-694678396.jpg',
              //name: 'Keanu papucho Reeves love you',
            ),
            SizedBox(
              height: 120,
              width: 20,
            ),
            Text(
              'Me debes 95 panqueques Jeny!',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 89, 56, 56)),
            ),
            SizedBox(
              height: 120,
              width: 20,
            ),
          ],
        ));
  }
}
