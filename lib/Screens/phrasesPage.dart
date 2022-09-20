import 'package:flutter/material.dart';

import '../Components/item.dart';
import '../Models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrase> phrases = const [
    Phrase(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: "don't forget to subscribe"),
    Phrase(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: "are you coming"),
    Phrase(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: "how are you feeling"),
    Phrase(
        sound: 'i_love_programing.wav',
        jpName: 'Puroguramingu ga daisukidesu',
        enName: "i love programing"),
    Phrase(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: "programing is easy"),
    Phrase(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: "what is your name"),
    Phrase(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: "where are you going"),
    Phrase(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai Imu kuru',
        enName: "yes im coming"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'phrases',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return PhrasesItem(
            phrase: phrases[index],
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
