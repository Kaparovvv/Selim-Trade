import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/news_box_widget.dart';

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

  @override
  void initState() {
    _newsBloc = BlocProvider.of(context);
    _newsBloc.add(GetNewsEvent(newsId: widget.newsId));
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocConsumer<NewsBloc, NewsState>(
              bloc: _newsBloc,
              listener: (context, state) {},
              builder: (context, state) {
                if (state is LoadedNewsState) {
                  var news = state.newsEntity;
                  return Padding(
                    padding: const EdgeInsets.only(top: 51),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
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
                        const SizedBox(height: 7),
                        CachedNetworkImageWidget(
                          width: context.width * 0.9333,
                          height: context.height * 0.431,
                          radius: BorderRadius.circular(20),
                          imageUrl: news.photoUrl,
                        ),
                        ListView.separated(
                          itemCount: news.newsPhotos!.length,
                          padding: const EdgeInsets.only(top: 27),
                          itemBuilder: (context, index) {
                            var newsPhotos = news.newsPhotos?[index];
                            return CachedNetworkImageWidget(
                              width: context.width * 0.9722,
                              height: context.height * 0.2069,
                              radius: BorderRadius.circular(20),
                              imageUrl: newsPhotos?.photoUrl,
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 20),
                        ),
                      ],
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 51),
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
            const SizedBox(height: 65),
            FooterAndApplication(
              moveToAboutUs: () {},
              moveToReviws: () {},
            ),
          ],
        ),
      ),
    );
  }
}
