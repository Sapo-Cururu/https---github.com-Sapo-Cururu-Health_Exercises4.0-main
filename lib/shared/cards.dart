import 'package:flutter/material.dart';
import 'package:health_exercises/screens/home/components/color_schemes.g.dart';
import 'package:health_exercises/screens/tips/tips.dart';
import 'package:health_exercises/model/db.dart';

class MyCard extends StatefulWidget {
  String text;
  String Stext;
  String image_path;
  int list_id;
  int card_id;
  MyCard({super.key, required this.text, required this.image_path, this.Stext = '', required this.list_id, required this.card_id});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  DB database = DB("favorites");
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: lightColorScheme.secondary.withOpacity(0.7),
      child: Column(
        children: [
          Image.asset(width: 70, widget.image_path),
          TitleText(
            text: widget.text,
            context: context,
          ),
          SubtitleText(text: widget.Stext, context: context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(isFavorite ? Icons.star : Icons.star_outline)),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Tips(
                                  title: widget.text,
                                  id: widget.list_id,
                                )));
                  },
                  child: const Text("Ler mais")),
            ],
          )
        ],
      ),
    );
  }
}

Text TitleText({required String text, required BuildContext context}) {
  return Text(
    text,
    style: Theme.of(context).textTheme.bodyLarge,
    textAlign: TextAlign.center,
  );
}

Text SubtitleText({required String text, required BuildContext context}) {
  return Text(
    text,
    style: Theme.of(context).textTheme.bodyMedium,
  );
}
