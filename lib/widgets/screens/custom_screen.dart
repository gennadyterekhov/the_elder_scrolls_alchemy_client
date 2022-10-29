import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/app_bar.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/bottom_panel_navigation.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/left_panel_navigation.dart';

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
    final orientationBuilder = OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait ? _buildVerticalLayout() : _buildHorizontalLayout();
      },
    );

    return Scaffold(
      appBar: AlchemyAppBar(notifyParent: refresh),
      body: orientationBuilder,
    );
  }

  Widget _buildVerticalLayout() {
    final layout = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: widget.pageWidget),
        BottomPanelNavigation(notifyParent: refresh),
      ],
    );
    return layout;
  }

  Widget _buildHorizontalLayout() {
    final layout = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LeftPanelNavigation(notifyParent: refresh),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(child: widget.pageWidget),
      ],
    );
    return layout;
  }
}
