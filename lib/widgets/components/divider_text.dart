import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final divider = Expanded(
      child: Divider(
        height: 5,
        thickness: 2,
        indent: 30,
        endIndent: 30,
        color: Colors.blue.shade50,
      ),
    );

    final dividerLine = Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          divider,
          Text(text),
          divider,
        ],
      ),
    );

    return dividerLine;
  }
}
