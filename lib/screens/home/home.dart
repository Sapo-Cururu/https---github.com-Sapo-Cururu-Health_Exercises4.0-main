import 'package:flutter/material.dart';
import 'package:health_exercises/shared/cards.dart';
import 'package:health_exercises/shared/bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final screens = [
    Container(
      margin: const EdgeInsets.all(16),
      child: GridView.count(
        // childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        children: [
          MyCard(
            text: "Pré Treino",
            Stext: "Rápido",
            image_path: "assets/images/logo.jpg",
            list_id: 0,
            card_id: 0,
          ),
          MyCard(
            text: "Pós Treino",
            Stext: "Bons Pratos",
            image_path: "assets/images/logo.jpg",
            list_id: 1,
            card_id: 1,
          ),
          MyCard(
            text: "Pratos Nutritivos",
            Stext: "Saudável",
            image_path: "assets/images/logo.jpg",
            list_id: 2,
            card_id: 2,
          ),
          MyCard(
            text: "Perigos do Açucar",
            Stext: "Comunicado",
            image_path: "assets/images/logo.jpg",
            list_id: 3,
            card_id: 3,
          ),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.all(16),
      child: GridView.count(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        children: [
          MyCard(
            text: "Exércicios de Perna",
            Stext: "Ótimas listas!",
            image_path: "assets/images/logo.jpg",
            list_id: 0,
            card_id: 4,
          ),
          MyCard(
            text: "Exercícios de Abdomen",
            Stext: "Venha conhecer!",
            image_path: "assets/images/logo.jpg",
            list_id: 1,
            card_id: 5,
          ),
          MyCard(
            text: "Exercícios de Braço",
            Stext: "Aprenda sobre!",
            image_path: "assets/images/logo.jpg",
            list_id: 2,
            card_id: 6,
          ),
          MyCard(
            text: "Exercícios de Torax",
            Stext: "Leia agora!",
            image_path: "assets/images/logo.jpg",
            list_id: 3,
            card_id: 7,
          ),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.all(16),
      child: GridView.count(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        children: [
          MyCard(
            text: "Dicas de Sono",
            Stext: "Auto-Ajuda",
            image_path: "assets/images/logo.jpg",
            list_id: 0,
            card_id: 8,
          ),
          MyCard(
            text: "Saúde Mental",
            Stext: "Pesquisa",
            image_path: "assets/images/logo.jpg",
            list_id: 1,
            card_id: 9,
          ),
          MyCard(
            text: "Bem-estar Social",
            Stext: "Livro",
            image_path: "assets/images/logo.jpg",
            list_id: 2,
            card_id: 10,
          ),
          MyCard(
            text: "Protetor Solar",
            Stext: "Artigo Médico",
            image_path: "assets/images/logo.jpg",
            list_id: 3,
            card_id: 11,
          ),
        ],
      ),
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        index: index,
        tap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
      ),
      body: screens[index],
    );
  }
}
