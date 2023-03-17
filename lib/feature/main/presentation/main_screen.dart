import 'package:flutter/material.dart';

import '../../../core/exports/export.dart';
import '../../../core/widgets/footer_and_application_widget.dart';
import 'local_widgets/body_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TopPanelWidget().topPanelWidget(
        context.width,
        context.height,
        context,
        IconHelper.logo,
        ThemeHelper.colorF1F6FF,
      ),
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          MainSliverAppBarWidget(
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeInOutSine,
              );
            },
          ),
          const BodyWidgets(),
          const SliverPadding(
            padding: EdgeInsets.only(top: 60),
            sliver: SliverToBoxAdapter(
              child: FooterAndApplication(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
