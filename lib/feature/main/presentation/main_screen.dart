import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/custom_drawer_widget.dart';
import 'package:selim_trade_app/core/widgets/footer_widgets/footer_widget.dart';

import '../../../core/exports/export.dart';
import 'local_widgets/body_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController? scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: CustomDrawerWidget(
        width: width,
        height: height,
        phone: '+996 (552) 57 07 55',
      ),
      appBar: TopPanelWidget().topPanelWidget(width, height),
      body: const CustomScrollView(
        slivers: [
          MainSliverAppBarWidget(),
          BodyWidgets(),
          SliverPadding(
            padding: EdgeInsets.only(top: 60),
            sliver: SliverToBoxAdapter(
              child: FooterWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
