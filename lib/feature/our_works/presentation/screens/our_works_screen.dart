import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/image_and_text_box_widget.dart';
import 'package:selim_trade_app/feature/our_works/presentation/bloc/works_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/widgets/footer_and_application_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/shimmer_loading_widget.dart';

class OurWorksScreen extends StatefulWidget {
  const OurWorksScreen({super.key});

  @override
  State<OurWorksScreen> createState() => _OurWorksScreenState();
}

class _OurWorksScreenState extends State<OurWorksScreen> {
  late ScrollController _scrollController;
  late WorksBloc _worksBloc;

  @override
  void initState() {
    super.initState();
    _worksBloc = BlocProvider.of(context);
    _worksBloc.add(const GetWorksListEvent(pageSize: 100));
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopPanelWidget().topPanelWidget(
        context.width,
        context.height,
        context,
        IconHelper.blackLogo,
        ThemeHelper.color414141,
      ),
      body: RefreshIndicator(
        onRefresh: () async => _worksBloc.add(
          const GetWorksListEvent(pageSize: 100),
        ),
        child: BlocConsumer<WorksBloc, WorksState>(
          bloc: _worksBloc,
          listener: (context, state) {},
          builder: (context, state) {
            if (state is LoadingWorksState) {
              return const ShimmerLoadingWidget();
            }
            if (state is LoadedWorksState) {
              var worksLength = state.worksList.length;
              return CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverPadding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 16, right: 16),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            TextHelper.ourWorks.toUpperCase(),
                            style: TextStyleHelper.f16w700,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            TextHelper.ourWorksDesc,
                            style: TextStyleHelper.f14w300,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 16, right: 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          var works = state.worksList[index];
                          return Column(
                            children: [
                              ImageAndTextBoxWidget(
                                width: context.width * 0.8889,
                                height: context.height * 0.2463,
                                imageUrl: works.photoUrl,
                                title: null,
                                alignment: AlignmentDirectional.center,
                                radius: 10,
                                onTap: () {},
                              ),
                              if (index != (worksLength - 1))
                                const SizedBox(height: 25),
                            ],
                          );
                        },
                        childCount: worksLength,
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(top: 40),
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
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
