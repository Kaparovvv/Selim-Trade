import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/image_and_text_box_widget.dart';
import 'package:selim_trade_app/feature/services/presentaion/blocs/bloc/gates_bloc.dart';

import '../../../../core/widgets/footer_and_application_widget.dart';

class ServiceScreen extends StatefulWidget {
  final int gateId;
  const ServiceScreen({super.key, required this.gateId});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  late ScrollController _scrollController;
  late GatesBloc _gatesBloc;

  @override
  void initState() {
    _scrollController = ScrollController();
    _gatesBloc = BlocProvider.of(context);
    _gatesBloc.add(GetGateEvent(gateId: widget.gateId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ThemeHelper.white,
      appBar: TopPanelWidget().topPanelWidget(
        context.width,
        context.height,
        context,
        IconHelper.logo,
        ThemeHelper.colorF1F6FF,
      ),
      body: BlocConsumer<GatesBloc, GatesState>(
        bloc: _gatesBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingGateState) {}
          if (state is LoadedGateState) {
            var gate = state.gateEntity;
            var gateListLength = state.gateEntity.gateList!.length;
            var advantagesLength = state.gateEntity.advantageGateList?.length;
            return CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  expandedHeight: context.height * 0.2291,
                  automaticallyImplyLeading: false,
                  backgroundColor: ThemeHelper.white,
                  stretch: true,
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: const <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                    ],
                    background: Stack(
                      alignment: Alignment.center,
                      children: [
                        CachedNetworkImageWidget(
                          width: context.width,
                          height: double.maxFinite,
                          imageUrl: gate.backgroundUrl,
                          radius: const BorderRadius.only(
                            bottomRight: Radius.circular(45),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 85,
                            left: 40,
                            right: 40,
                            bottom: 40,
                          ),
                          child: Text(
                            gate.name ?? '',
                            textAlign: TextAlign.center,
                            style: TextStyleHelper.f16w800,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.only(top: 22, left: 36.5, right: 36.5),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          gate.description ?? '',
                          style: TextStyleHelper.f14w300,
                        ),
                        const SizedBox(height: 55),
                        Text(
                          TextHelper.typeOfGates.toUpperCase(),
                          style: TextStyleHelper.f16w800
                              .copyWith(color: ThemeHelper.color414141),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.only(top: 10, left: 36.5, right: 36.5),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        var gateList = gate.gateList?[index];
                        return Column(
                          children: [
                            ImageAndTextBoxWidget(
                              width: context.width * 0.7972,
                              height: context.height * 0.2118,
                              isTextWithBackground: false,
                              alignment: AlignmentDirectional.bottomStart,
                              imageUrl: gateList?.photoUrl,
                              title: gateList?.name ?? '',
                              radius: 10,
                              onTap: () {},
                            ),
                            if (index != (gateListLength - 1))
                              const SizedBox(height: 30),
                          ],
                        );
                      },
                      childCount: gateListLength,
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(top: 50, left: 36.5, right: 36.5),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      TextHelper.mainAdvantages,
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.f16w700,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        var advantages = gate.advantageGateList?[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              (advantages?.title ?? '').toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyleHelper.f20w600,
                            ),
                            const SizedBox(height: 7),
                            Text(
                              (advantages?.description ?? '').toLowerCase(),
                              style: TextStyleHelper.f14w300,
                            ),
                            if (index != ((advantagesLength ?? 0) - 1))
                              const SizedBox(height: 40),
                          ],
                        );
                      },
                      childCount: advantagesLength,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 50),
                  sliver: SliverToBoxAdapter(
                    child: FooterAndApplication(
                      moveToAboutUs: () {},
                      moveToReviws: () {},
                    ),
                  ),
                ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
