import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      onPressed: () => context.push(Constant.skyrimHomeLink),
      child: Text(AppLocalizations.of(context)!.errorScreenHomeLink),
    );

    final issueLinkButton = ElevatedButton(
      onPressed: () => launch('https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/issues'),
      child: Text(AppLocalizations.of(context)!.errorScreenGithub),
    );

    var errorText = Text(widget.error?.toString() ?? AppLocalizations.of(context)!.errorScreenFallbackMessage);
    if (widget.error is Exception) {
      errorText = Text(widget.error.toString());
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(AppLocalizations.of(context)!.errorScreenTitle),
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
