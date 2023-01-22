import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLink extends StatelessWidget {
  const WebLink({Key? key, required this.text, required this.url}) : super(key: key);
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    final link = InkWell(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue),
      ),
    );

    return link;
  }
}
