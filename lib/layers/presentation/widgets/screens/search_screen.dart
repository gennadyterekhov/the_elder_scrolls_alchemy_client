import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/pages/search/search.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/custom_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CustomScreen(gameName: '', pageWidget: const Scaffold());
  // Widget build(BuildContext context) => CustomScreen(pageWidget: const SearchPage());

}
