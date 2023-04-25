import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/loading_widget.dart';
import 'package:selim_trade_app/core/widgets/news_box_widget.dart';
import 'package:selim_trade_app/core/widgets/custom_outli_button_widget.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news_list/news_list_entity.dart';

import '../../../../../core/exports/export.dart';
import '../../../../news/presentation/bloc/bloc/news_bloc.dart';

class LatestNewsWidget extends StatefulWidget {
  const LatestNewsWidget({super.key});

  @override
  State<LatestNewsWidget> createState() => _LatestNewsWidgetState();
}

class _LatestNewsWidgetState extends State<LatestNewsWidget> {
  late NewsBloc _newsBloc;
  late List<NewsListEntity> _newsList;

  @override
  void initState() {
    _newsBloc = BlocProvider.of(context);
    _newsBloc.add(const GetNewsListEvent(pageSize: 10));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.latestNews,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: context.width,
          height: context.height * 0.2,
          child: BlocConsumer<NewsBloc, NewsState>(
            bloc: _newsBloc,
            listener: (context, state) {},
            builder: (context, state) {
              if (state is LoadedNewsListState) {
                var newsList = state.newsListEntity;
                _newsList = newsList;
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  itemBuilder: (context, index) {
                    var news = newsList[index];
                    return NewsBoxWidget(
                      width: context.width * 0.67,
                      height: context.height * 0.2,
                      imageUrl: news.photoUrl,
                      title: news.title,
                      description: news.description,
                      onPressed: () => context.router.push(
                        NewsScreenRoute(newsId: news.id!),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 13),
                  itemCount: newsList.length,
                );
              }
              return const Center(
                child: Text(TextHelper.thereisNothing),
              );
            },
          ),
        ),
        const SizedBox(height: 15),
        CustomOutlinedButtonWidget(
          title: TextHelper.allNews,
          onPressed: () => context.router.push(
            const NewsFeedScreenRoute(),
          ),
        ),
      ],
    );
  }
}
