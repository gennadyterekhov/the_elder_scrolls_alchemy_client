import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({Key? key, this.error}) : super(key: key);
  final Object? error;

  @override
  State<ErrorScreen> createState() => ErrorScreenState();
}

class ErrorScreenState extends State<ErrorScreen> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final homeLinkButton = ElevatedButton(
      onPressed: () => context.go('/home'),
      child: const Text('Go Home'),
    );

    final issueLinkButton = ElevatedButton(
      onPressed: () => launch('https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/issues'),
      child: const Text('File an issue'),
    );

    var errorText = Text(widget.error?.toString() ?? 'An Unknown error occurred');
    if (widget.error is Exception) {
      errorText = Text(widget.error.toString());
    }
    debugPrint('$errorText');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('An Error occurred'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            errorText,
            homeLinkButton,
            issueLinkButton,
          ],
        ),
      ),
    );
  }
}
