import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatefulWidget {
  final void Function(int index) tap;
  int index;
  CustomBottomNavigationBar({
    super.key,
    required this.index,
    required this.tap,
  });

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    BottomNavigationBar Nav =  BottomNavigationBar(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      currentIndex: widget.index,
      onTap: widget.tap,
      items: const [
        BottomNavigationBarItem(
          label: "Dicas de Alimentação",
          icon: Icon(
            Icons.restaurant,
          ),
        ),
        BottomNavigationBarItem(
          label: "Dicas de Exercício",
          icon: Icon(
            Icons.fitness_center_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Dicas de Saúde",
          icon: Icon(
            Icons.monitor_heart_outlined,
          ),
        ),
      ],
    );
  return Nav;
  }
}
