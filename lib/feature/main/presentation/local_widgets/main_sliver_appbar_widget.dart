import 'package:flutter/material.dart';
import 'package:selim_trade_app/commons/icon_helper.dart';
import 'package:selim_trade_app/commons/images_helper.dart';
import 'package:selim_trade_app/commons/textStyle_helper.dart';
import 'package:selim_trade_app/commons/text_helper.dart';
import 'package:selim_trade_app/commons/theme_helper.dart';

// ignore: must_be_immutable
class MainSliverAppBarWidget extends StatefulWidget {
  const MainSliverAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MainSliverAppBarWidget> createState() => _MainSliverAppBarWidgetState();
}

class _MainSliverAppBarWidgetState extends State<MainSliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SliverAppBar(
      elevation: 0,
      expandedHeight: MediaQuery.of(context).size.height * 0.42,
      automaticallyImplyLeading: false,
      backgroundColor: ThemeHelper.white,
      stretch: true,
      actions: const <Widget>[SizedBox()],
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
        ],
        background: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageHelper.appBarBack),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ThemeHelper.color161623opa4,
                    ThemeHelper.color161623opa3,
                    ThemeHelper.color161623opa25,
                    ThemeHelper.color161623opa4,
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 118,
                right: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextHelper.text1,
                    style: TextStyleHelper.f25w700.copyWith(fontSize: 25),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    TextHelper.text2,
                    style: TextStyleHelper.f14w600
                        .copyWith(color: ThemeHelper.colorFCFCFC),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: width * 0.58,
                    height: height * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          ThemeHelper.color105BFB,
                          ThemeHelper.color5061FF
                        ],
                      ),
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ImageIcon(
                            AssetImage(IconHelper.order),
                            color: ThemeHelper.colorF1F6FF,
                          ),
                          SizedBox(width: 15),
                          Text(
                            TextHelper.orderATage,
                            style: TextStyleHelper.f15w900,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
