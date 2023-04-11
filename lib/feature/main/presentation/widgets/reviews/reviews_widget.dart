import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/loading_widget.dart';
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
              if (state is LoadingReviewsListState) {
                return LoadingWidget(
                  width: context.width * 0.66,
                  height: context.height * 0.18,
                );
              }
              if (state is LoadedReviewsListState) {
                var reviewsList = state.reviewsListEntity;
                return PageView.builder(
                  controller: _pageController,
                  itemCount: reviewsList.length,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _pageChanged = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    var reviews = reviewsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      child: Center(
                        child: ReviewsBoxWidget(
                          reviews: reviews,
                        ),
                      ),
                    );
                  },
                );
              }
              return const SizedBox();
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
