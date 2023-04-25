import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/news_box_widget.dart';
import 'package:selim_trade_app/core/widgets/shimmer_loading_widget.dart';

import '../../../../core/widgets/footer_and_application_widget.dart';
import '../bloc/bloc/news_bloc.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
    required this.newsId,
  });
  final int newsId;
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late NewsBloc _newsBloc;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _newsBloc = BlocProvider.of(context);
    _newsBloc.add(GetNewsEvent(newsId: widget.newsId));
    _newsBloc.add(const GetNewsListEvent(pageSize: 10));
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
      body: BlocConsumer<NewsBloc, NewsState>(
        bloc: _newsBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingNewsState) {
            return const ShimmerLoadingWidget();
          }
          if (state is LoadedNewsState) {
            var news = state.newsEntity;
            var newsPhotosLength = news.newsPhotos?.length ?? 0;
            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(top: 51, bottom: 7),
                  sliver: SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        children: [
                          Text(
                            news.title ?? '',
                            style: TextStyleHelper.f16w700,
                          ),
                          const SizedBox(height: 25),
                          Text(
                            news.description ?? '',
                            style: TextStyleHelper.f14w300,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        var newsPhotos = news.newsPhotos?[index];
                        return CachedNetworkImageWidget(
                          width: context.width * 0.9333,
                          height: context.height * 0.431,
                          radius: BorderRadius.circular(20),
                          imageUrl: newsPhotos?.photoUrl,
                        );
                      },
                      childCount: 1,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        var newsPhotos = news.newsPhotos?[index];
                        return Column(
                          children: [
                            CachedNetworkImageWidget(
                              width: context.width * 0.9722,
                              height: context.height * 0.2069,
                              radius: BorderRadius.circular(20),
                              imageUrl: newsPhotos?.photoUrl,
                            ),
                            if (index != (newsPhotosLength - 1))
                              const SizedBox(height: 13),
                          ],
                        );
                      },
                      childCount: newsPhotosLength,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 51),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Text(
                          TextHelper.relatedNews.toUpperCase(),
                          style: TextStyleHelper.f16w700,
                        ),
                        SizedBox(
                          width: context.width,
                          height: context.height * 0.2648,
                          child: BlocConsumer<NewsBloc, NewsState>(
                            bloc: _newsBloc,
                            listener: (context, state) {},
                            builder: (context, state) {
                              if (state is LoadedNewsListState) {
                                return ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 27,
                                  ),
                                  itemBuilder: (context, index) {
                                    var news = state.newsListEntity[index];
                                    return NewsBoxWidget(
                                      width: context.width * 0.8778,
                                      height: context.height * 0.2648,
                                      imageUrl: news.photoUrl,
                                      title: news.title,
                                      onPressed: () => context.router.replace(
                                        NewsScreenRoute(
                                          newsId: news.id!,
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 13),
                                  itemCount: state.newsListEntity.length,
                                );
                              }
                              return const SizedBox();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 65),
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
}
