import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:selim_trade_app/commons/icon_helper.dart';
import 'package:selim_trade_app/commons/images_helper.dart';
import 'package:selim_trade_app/commons/textStyle_helper.dart';
import 'package:selim_trade_app/commons/theme_helper.dart';
import 'package:selim_trade_app/core/widgets/news_sliver_appbar_widget.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          width: width * 0.2,
          height: height * 0.04,
          IconHelper.logo,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(IconHelper.menu),
              size: 31,
              color: ThemeHelper.colorF1F6FF,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const MainSliverAppBarWidget(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: index.isEven ? Colors.green[300] : Colors.white,
                  child: Text('List item :  $index'),
                );
              },
              childCount: 15,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 8)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
