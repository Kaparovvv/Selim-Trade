import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/widgets/shimmer_loading_widget.dart';
import 'package:selim_trade_app/feature/news/presentation/bloc/bloc/news_bloc.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/footer_and_application_widget.dart';
import '../widgets/news_feed_body.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  late NewsBloc _newsBloc;
  late ScrollController _scrollController;

  @override
  void initState() {
    _newsBloc = BlocProvider.of(context);
    _newsBloc.add(const GetNewsListEvent(pageSize: 6));
    _scrollController = ScrollController();
    super.initState();
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
        color: ThemeHelper.color105BFB,
        onRefresh: () async => _newsBloc.add(
          const GetNewsListEvent(pageSize: 6),
        ),
        child: BlocConsumer<NewsBloc, NewsState>(
          bloc: _newsBloc,
          listener: (context, state) {},
          builder: (context, state) {
            if (state is LoadingNewsState) {
              return const ShimmerLoadingWidget();
            }
            if (state is LoadedNewsListState) {
              return NewsFeedBodyWidget(
                scrollController: _scrollController,
                newsList: state.newsListEntity,
              );
            }

            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    TextHelper.newsOfCompany.toUpperCase(),
                    style: TextStyleHelper.f16w700,
                  ),
                  const SizedBox(height: 71),
                  const Text(
                    TextHelper.thereisNothing,
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.f14w300,
                  ),
                  const SizedBox(height: 71),
                  FooterAndApplication(
                    moveToAboutUs: () {},
                    moveToReviws: () {},
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
