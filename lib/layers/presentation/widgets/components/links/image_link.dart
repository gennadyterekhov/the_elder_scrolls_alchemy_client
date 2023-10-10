import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/helpers/link_launcher.dart';

class ImageWebLink extends StatelessWidget {
  const ImageWebLink({Key? key, required this.image, required this.url}) : super(key: key);
  final Widget image;
  final String url;

  @override
  Widget build(BuildContext context) {
    final link = InkWell(
      onTap: () {
        LinkLauncher.launch(url: url);
      },
      child: image,
    );

    return link;
  }
}
