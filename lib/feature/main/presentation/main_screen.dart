import 'package:flutter/material.dart';

import '../../../core/exports/export.dart';
import '../../../core/widgets/footer_and_application_widget.dart';
import 'widgets/body_widgets.dart';

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
              // Scrollable.ensureVisible(
              //   ConstantsKey().apllicationWidgetKey.currentContext!,
              //   alignment: 0.5,
              //   duration: const Duration(milliseconds: 900),
              //   curve: Curves.easeInOutSine,
              // );
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent - 100,
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeInOutSine,
              );
            },
          ),
          const BodyWidgets(),
          SliverPadding(
            padding: const EdgeInsets.only(top: 60),
            sliver: SliverToBoxAdapter(
              child: FooterAndApplication(
                moveToAboutUs: () {
                  _scrollController.animateTo(
                    _scrollController.position.minScrollExtent - 50,
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.easeInOutSine,
                  );
                },
                moveToReviws: () {
                  _scrollController.animateTo(
                    _scrollController.position.minScrollExtent + 1700,
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.easeInOutSine,
                  );
                  // Scrollable.ensureVisible(
                  //   ConstantsKey().reviewsWidgetKey.currentContext!,
                  //   alignment: 0.5,
                  //   duration: const Duration(milliseconds: 900),
                  //   curve: Curves.easeInOutSine,
                  // );
                },
              ),
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
