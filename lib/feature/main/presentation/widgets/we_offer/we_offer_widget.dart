import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';

import 'package:selim_trade_app/core/widgets/custom_outli_button_widget.dart';
import 'package:selim_trade_app/core/widgets/loading_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/scroll_button_widget.dart';
import 'package:selim_trade_app/feature/services/presentaion/blocs/bloc/gates_bloc.dart';

import '../../../../../core/exports/export.dart';
import '../../../../../core/widgets/image_and_text_box_widget.dart';

class WeOfferWidget extends StatefulWidget {
  const WeOfferWidget({super.key});

  @override
  State<WeOfferWidget> createState() => _WeOfferWidgetState();
}

class _WeOfferWidgetState extends State<WeOfferWidget> {
  late GatesBloc _gatesBloc;
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.7,
  );

  var _pageChanged = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {});
    _gatesBloc = BlocProvider.of(context);
    _gatesBloc.add(const GetGateListEvent(pageSize: 10));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.weOffer,
          textAlign: TextAlign.center,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: context.width,
          height: context.height * 0.21,
          child: BlocConsumer<GatesBloc, GatesState>(
            bloc: _gatesBloc,
            listener: (context, state) {},
            builder: (context, state) {
              if (state is LoadingGateState) {
                return LoadingWidget(
                  width: context.width * 0.69,
                  height: context.height * 0.21,
                );
              }
              if (state is LoadedGateListState) {
                return _weOffersList(state);
              }
              return const SizedBox();
            },
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
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
              CustomOutlinedButtonWidget(
                title: TextHelper.viewAll,
                onPressed: () => context.router.push(
                  const ListServicesScreenRoute(),
                ),
              ),
              ScrollButtonWidget(
                icon: IconHelper.arrowRight,
                iconTheme: ThemeHelper.color105BFB,
                onPressed: () {
                  _pageController.animateToPage(
                    ++_pageChanged,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  PageView _weOffersList(LoadedGateListState state) {
    return PageView.builder(
      controller: _pageController,
      itemCount: state.gateListEntity.length,
      physics: const BouncingScrollPhysics(),
      onPageChanged: (index) {
        setState(() {
          _pageChanged = index;
        });
      },
      itemBuilder: (context, index) {
        var gate = state.gateListEntity[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: ImageAndTextBoxWidget(
              width: context.width * 0.69,
              height: context.height * 0.21,
              alignment: AlignmentDirectional.bottomStart,
              imageUrl: gate.backgroundUrl,
              title: gate.name,
              onTap: () {},
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
