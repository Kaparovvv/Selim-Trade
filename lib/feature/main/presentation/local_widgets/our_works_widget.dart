import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/image_and_text_box_widget.dart';

class OurWorksWidget extends StatelessWidget {
  const OurWorksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.ourWorks,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 5),
        CarouselSlider.builder(
          itemCount: 10,
          itemBuilder: (context, index, realIndex) {
            return ImageAndTextBoxWidget(
              width: width * 0.54,
              height: height * 0.23,
              imageUrl:
                  'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
              description: null,
              boxShadow: const BoxShadow(
                color: ThemeHelper.color105BFB,
                offset: Offset(0, 0),
                blurRadius: 4.48,
              ),
            );
          },
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            autoPlay: true,
            enlargeCenterPage: true,
            pageSnapping: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enlargeFactor: 0.6,
          ),
        ),
      ],
    );
  }
}
