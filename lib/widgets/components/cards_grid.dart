import 'package:flutter/material.dart';

class CardsGrid extends StatefulWidget {
  const CardsGrid({Key? key, required this.cards}) : super(key: key);
  final List<Widget> cards;
  @override
  State<CardsGrid> createState() => _CardsGridState();
}

class _CardsGridState extends State<CardsGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int crossAxisCount = 1;
    double childAspectRatio = 3;
    if (width > 370) {
      crossAxisCount = 2;
      childAspectRatio = 2;
    }
    if (width > 550) {
      crossAxisCount = 3;
      childAspectRatio = 2;
    }
    if (width > 800) {
      crossAxisCount = 4;
      childAspectRatio = 1.6;
    }

    final grid = GridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      childAspectRatio: childAspectRatio,
      crossAxisCount: crossAxisCount,
      children: widget.cards,
    );

    return grid;
  }
}
