import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/image_and_text_box_widget.dart';
import 'package:selim_trade_app/feature/our_works/presentation/bloc/works_bloc.dart';

import '../../../../../core/exports/export.dart';

class OurWorksWidget extends StatefulWidget {
  const OurWorksWidget({super.key});

  @override
  State<OurWorksWidget> createState() => _OurWorksWidgetState();
}

class _OurWorksWidgetState extends State<OurWorksWidget> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  late WorksBloc _worksBloc;

  var _currPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    _worksBloc = BlocProvider.of(context);
    _worksBloc.add(const GetWorksListEvent(pageSize: 10));
    _pageController.addListener(() {
      setState(() {
        _currPageValue = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.ourWorks,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: context.width,
          height: context.height * 0.23,
          child: BlocConsumer<WorksBloc, WorksState>(
            bloc: _worksBloc,
            listener: (context, state) {},
            builder: (context, state) {
              // if (state is LoadingWorksState) {
              //   return Shimmer.fromColors(
              //     baseColor: Colors.grey[300]!,
              //     highlightColor: Colors.grey[100]!,
              //     child: ListView.separated(
              //       itemCount: 3,
              //       itemBuilder: (context, index) => Container(
              //         width: context.width * 0.67,
              //         height: context.height * 0.2,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //       ),
              //       separatorBuilder: (context, index) =>
              //           const SizedBox(width: 15),
              //     ),
              //   );
              // }
              if (state is LoadedWorksState) {
                var works = state.worksList;
                return PageView.builder(
                  itemCount: works.length,
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Center(
                      child: buildPageItem(
                        index,
                        () => context.router.push(const OurWorksScreenRoute()),
                        imageUrl: works[index].photoUrl ?? '',
                      ),
                    );
                  },
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }

  final double _scaleFactor = .8;
  final double _height = 230.0;

  Transform buildPageItem(int index, Function() onTap,
      {required String imageUrl}) {
    Matrix4 matrix = Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Stack(
          children: [
            ImageAndTextBoxWidget(
              width: context.width * 0.67,
              height: context.height * 0.2,
              imageUrl: imageUrl,
              title: null,
              alignment: AlignmentDirectional.bottomStart,
              boxShadow: BoxShadow(
                color: ThemeHelper.color105BFB.withOpacity(0.3),
                offset: const Offset(0, 0),
                blurRadius: 4.48,
              ),
              onTap: () => onTap(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
