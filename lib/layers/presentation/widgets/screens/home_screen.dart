import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/custom_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/pages/home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.gameName}) : super(key: key);
  final String gameName;
  @override
  Widget build(BuildContext context) {
    return CustomScreen(gameName: this.gameName, pageWidget: HomePage(gameName: this.gameName));
  }
}
