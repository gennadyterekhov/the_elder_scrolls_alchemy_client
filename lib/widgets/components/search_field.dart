import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double widthFactor = .95;

    if (width > 370) {
      widthFactor = 0.95;
    }
    if (width > 550) {
      widthFactor = 0.7;
    }
    if (width > 800) {
      widthFactor = 0.5;
    }

    final textField = TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'Search query',
        suffixIcon: IconButton(
          onPressed: widget.controller.clear,
          icon: const Icon(Icons.clear),
        ),
      ),
    );

    final padding = Padding(
      padding: const EdgeInsets.all(10.0),
      child: textField,
    );

    final searchFieldWidget = Card(
      child: padding,
    );

    final limitedWidthSearch = FractionallySizedBox(
      widthFactor: widthFactor,
      child: searchFieldWidget,
    );
    return limitedWidthSearch;
  }
}
