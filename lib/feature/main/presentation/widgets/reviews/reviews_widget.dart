import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/reviews/reviews_box_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/scroll_button_widget.dart';

import '../../blocs/bloc/reviews_bloc.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({super.key});

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  late ReviewsBloc _reviewsBloc;
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.7,
  );
  var _pageChanged = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {});
    _reviewsBloc = BlocProvider.of(context);
    _reviewsBloc.add(const GetReviewsListEvent());
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> listOfReviews = [
      {
        "image": 'https://www.peoples.ru/character/movie/loki/loki_2.jpg',
        "author": 'Улан Султанов',
        "typeOfGates": 'ворота атоматические',
        "reviewsText":
            'Ворота стоят уже более двух лет. За это время с ними не было никаких проблем. Спасибо, Selim Trade!',
      },
      {
        "image": 'https://i.ytimg.com/vi/nIL1ZPP4Af4/maxresdefault.jpg',
        "author": 'Улан Султанов',
        "typeOfGates": 'ворота атоматические',
        "reviewsText":
            'Ворота стоят уже более двух лет. За это время с ними не было никаких проблем. Спасибо, Selim Trade!',
      },
      {
        "image":
            'https://www.meme-arsenal.com/memes/b191faa34f0b45cb1b047242410c7ce2.jpg',
        "author": 'Улан Султанов',
        "typeOfGates": 'ворота атоматические',
        "reviewsText":
            'Ворота стоят уже более двух лет. За это время с ними не было никаких проблем. Спасибо, Selim Trade!sdkjcn sdjcns sdjcns, nksjdncks skdjcnksjd skjdcnskjd skjdcnskjd skdjcnskjdnc skdjcnkjsd skdjcnkjsdn',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.reviewsOurClients,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 28),
        SizedBox(
          width: context.width,
          height: context.height * 0.21,
          child: BlocConsumer<ReviewsBloc, ReviewsState>(
            bloc: _reviewsBloc,
            listener: (context, state) {},
            builder: (context, state) {
              // if (state is LoadingReviewsListState) {
              //   return const CircularProgressIndicator();
              // }
              if (state is LoadedReviewsListState) {
                return PageView.builder(
                  controller: _pageController,
                  itemCount: listOfReviews.length,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    var reviews = state.reviewsListEntity[index].photoUrl;
                    setState(() {
                      _pageChanged = index;
                    });
                  },
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Center(
                      child: ReviewsBoxWidget(),
                    ),
                  ),
                );
              }
              return PageView.builder(
                controller: _pageController,
                itemCount: listOfReviews.length,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _pageChanged = index;
                  });
                },
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  child: Center(
                    child: const ReviewsBoxWidget(),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 120, right: 120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScrollButtonWidget(
                icon: IconHelper.arrowLeft,
                iconTheme: ThemeHelper.color105BFB,
                onPressed: () => _pageController.animateToPage(
                  --_pageChanged,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.ease,
                ),
              ),
              ScrollButtonWidget(
                icon: IconHelper.arrowRight,
                iconTheme: ThemeHelper.color105BFB,
                onPressed: () => _pageController.animateToPage(
                  ++_pageChanged,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.ease,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
