import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/app_bar.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/bottom_panel_navigation.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/left_panel_navigation.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({Key? key, required this.gameName, required this.pageWidget}) : super(key: key);
  final Widget pageWidget;
  final String gameName;

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('inside CustomScreen build. widget.gameName:');
    debugPrint(widget.gameName);
    final orientationBuilder = OrientationBuilder(
      builder: (context, orientation) {
        return MediaQuery.of(context).size.width < 600 ? _buildVerticalLayout() : _buildHorizontalLayout();
      },
    );

    return Scaffold(
      appBar: AlchemyAppBar(
        gameName: widget.gameName,
      ),
      body: orientationBuilder,
    );
  }

  Widget _buildVerticalLayout() {
    final layout = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildPageWidget(),
        BottomPanelNavigation(gameName: widget.gameName, notifyParent: refresh),
      ],
    );
    return layout;
  }

  Widget _buildPageWidget() {
    try {
      return Expanded(child: widget.pageWidget);
    } catch (exception) {
      return Column(children: [CupertinoActivityIndicator(), Text(exception.toString())]);
    }
  }

  Widget _buildHorizontalLayout() {
    final layout = SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LeftPanelNavigation(gameName: widget.gameName, notifyParent: refresh),
          const VerticalDivider(thickness: 1, width: 1),
          _buildPageWidget(),
        ],
      ),
    );
    return layout;
  }
}
