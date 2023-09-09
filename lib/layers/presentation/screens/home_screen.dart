import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/pages/home.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/custom_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return CustomScreen(gameName: this.gameName, pageWidget: HomePage(gameName: this.gameName));
  }
}
