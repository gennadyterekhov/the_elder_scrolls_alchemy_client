import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final searchFieldWidget = Card(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextField(controller: controller),
      ),
    );
    return searchFieldWidget;
  }
}
