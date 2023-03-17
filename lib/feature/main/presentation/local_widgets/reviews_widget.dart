import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/reviews_dialog_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/scroll_button_widget.dart';

import '../../../../core/custom_painter/reviews_box_custom_painter.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({super.key});

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.7,
  );
  var _pageChanged = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {});
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
          child: PageView.builder(
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
                child: Stack(
                  children: [
                    SizedBox(
                      width: context.width * 0.66,
                      height: context.height * 0.18,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: CustomPaint(
                              size: Size(
                                context.width * 0.66,
                                context.height * 0.18,
                              ),
                              painter: ReviewsBoxCustomPainter(),
                            ),
                          ),
                          Positioned(
                            left: 14.5,
                            bottom: 105,
                            child: SafeArea(
                              child: CachedNetworkImageWidget(
                                imageUrl: listOfReviews[index]['image'],
                                width: context.width * 0.155,
                                height: context.height * 0.068,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 9,
                            left: 88,
                            bottom: 105,
                            right: 14,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listOfReviews[index]['author'] ?? 'unknown',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyleHelper.f13w600,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  listOfReviews[index]['typeOfGates'] ??
                                      'unknown',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyleHelper.f11w300,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 64,
                            left: 6,
                            bottom: 18,
                            right: 60,
                            child: SizedBox(
                              width: context.width * 0.61,
                              child: Text(
                                listOfReviews[index]['reviewsText'] ?? '',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyleHelper.f12w400,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: 195,
                            bottom: 5,
                            right: 5,
                            child: GestureDetector(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: ThemeHelper.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: ThemeHelper.white20,
                                      offset: Offset(0.5, 0.5),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  IconHelper.readMore,
                                  color: ThemeHelper.color08B89D,
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) => ReviewsDialogWidget(
                                  author: listOfReviews[index]['author'],
                                  image: listOfReviews[index]['image'],
                                  typeGates: listOfReviews[index]
                                      ['typeOfGates'],
                                  reviewsText: listOfReviews[index]
                                      ['reviewsText'],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
