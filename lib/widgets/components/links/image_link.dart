import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageWebLink extends StatelessWidget {
  const ImageWebLink({Key? key, required this.image, required this.url}) : super(key: key);
  final Widget image;
  final String url;

  @override
  Widget build(BuildContext context) {
    final link = InkWell(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: image,
    );

    return link;
  }
}
