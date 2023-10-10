import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/helpers/link_launcher.dart';

class WebLink extends StatelessWidget {
  const WebLink({Key? key, required this.text, required this.url}) : super(key: key);
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    final link = InkWell(
      onTap: () {
        LinkLauncher.launch(url: url);
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue),
      ),
    );

    return link;
  }
}
