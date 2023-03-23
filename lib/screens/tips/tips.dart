import 'package:flutter/material.dart';
import 'package:health_exercises/model/db.dart';
import 'package:health_exercises/shared/cards.dart';

class Tips extends StatelessWidget {
  String title;
  int id;
  Tips({super.key, required this.title, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TitleText(text: title, context: context),),
      body: Column(children: [
      ]),
    );
  }
}