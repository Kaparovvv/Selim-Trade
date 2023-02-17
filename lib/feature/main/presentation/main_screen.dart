import 'package:flutter/material.dart';

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
      appBar: TopPanelWidget().topPanelWidget(width, height, () {}),
      body: const CustomScrollView(
        slivers: [
          MainSliverAppBarWidget(),
          BodyWidgets(),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         height: 50,
          //         alignment: Alignment.center,
          //         color: index.isEven ? Colors.green[300] : Colors.white,
          //         child: Text('List item :  $index'),
          //       );
          //     },
          //     childCount: 15,
          //   ),
          // ),
          // // SliverGrid(
          // //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // //     maxCrossAxisExtent: 200.0,
          // //     mainAxisSpacing: 10.0,
          // //     crossAxisSpacing: 10.0,
          // //     childAspectRatio: 4.0,
          // //   ),
          // //   delegate: SliverChildBuilderDelegate(
          // //     (BuildContext context, int index) {
          // //       return Container(
          // //         alignment: Alignment.center,
          // //         color: Colors.cyan[100 * (index % 8)],
          // //         child: Text('grid item $index'),
          // //       );
          // //     },
          // //     childCount: 15,
          // //   ),
          // // ),
        ],
      ),
    );
  }
}
