import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/app_bar.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/left_panel_navigation.dart';

class CustomScreen extends StatefulWidget {
  CustomScreen({Key? key, required this.pageWidget}) : super(key: key);
  Widget pageWidget;

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  refresh() {
    setState(() {
      // widget.pageWidget = globalPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AlchemyAppBar(notifyParent: refresh),
      body: Row(
        children: [
          LeftPanelNavigation(notifyParent: refresh),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: widget.pageWidget),
        ],
      ),
    );
  }
}
