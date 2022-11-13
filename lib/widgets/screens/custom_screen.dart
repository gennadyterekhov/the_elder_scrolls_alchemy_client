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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final orientationBuilder = OrientationBuilder(
      builder: (context, orientation) {
        return MediaQuery.of(context).size.width < 600 ? _buildVerticalLayout() : _buildHorizontalLayout();
      },
    );

    return Scaffold(
      appBar: AlchemyAppBar(),
      body: orientationBuilder,
    );
  }

  Widget _buildVerticalLayout() {
    final layout = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildPageWidget(),
        BottomPanelNavigation(notifyParent: refresh),
      ],
    );
    return layout;
  }

  Widget _buildPageWidget() {
    return Expanded(child: widget.pageWidget);
  }

  Widget _buildHorizontalLayout() {
    final layout = SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LeftPanelNavigation(notifyParent: refresh),
          const VerticalDivider(thickness: 1, width: 1),
          _buildPageWidget(),
        ],
      ),
    );
    return layout;
  }
}
