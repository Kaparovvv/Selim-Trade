// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:selim_trade_app/core/error/failure.dart' as _i4;
import 'package:selim_trade_app/core/platform/network_info.dart' as _i5;
import 'package:selim_trade_app/core/services/api_requester.dart' as _i3;
import 'package:selim_trade_app/feature/main/data/data_sources/reviews/reviews_local_source.dart'
    as _i12;
import 'package:selim_trade_app/feature/main/data/data_sources/reviews/reviews_remote_source.dart'
    as _i7;
import 'package:selim_trade_app/feature/main/data/repositories/reviews_list_repo_ext.dart'
    as _i14;
import 'package:selim_trade_app/feature/main/domain/repositories/reviews_repository.dart'
    as _i13;
import 'package:selim_trade_app/feature/main/domain/usecases/reviews_list.dart'
    as _i16;
import 'package:selim_trade_app/feature/main/presentation/blocs/bloc/reviews_bloc.dart'
    as _i18;
import 'package:selim_trade_app/feature/news/data/data_sources/news_local_source.dart'
    as _i9;
import 'package:selim_trade_app/feature/news/data/data_sources/news_remote_source.dart'
    as _i6;
import 'package:selim_trade_app/feature/news/data/repositories/news_repo_ext.dart'
    as _i11;
import 'package:selim_trade_app/feature/news/domain/repositories/news_repository.dart'
    as _i10;
import 'package:selim_trade_app/feature/news/domain/usecases/news_case.dart'
    as _i15;
import 'package:selim_trade_app/feature/news/presentation/bloc/bloc/news_bloc.dart'
    as _i17;
import 'package:selim_trade_app/utils/injectable_module.dart' as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.ApiClient>(() => _i3.ApiClient());
    gh.factory<_i4.CacheFailure>(() => _i4.CacheFailure(gh<String>()));
    gh.factory<_i5.NetworkInfo>(() => _i5.NetworkInfoImpl());
    gh.singleton<_i6.NewsRemoteDataSource>(_i6.NewsRemoteDataSourceImpl());
    gh.singleton<_i7.ReviewsListRemoteDataSource>(
        _i7.ReviewsListRemoteDataSourceImpl());
    gh.factory<_i4.ServerFailure>(
        () => _i4.ServerFailure(errorCode: gh<int>()));
    gh.singletonAsync<_i8.SharedPreferences>(
        () => injectableModule.sharedPreferences);
    gh.singletonAsync<_i9.NewsLocalDataSource>(() async =>
        _i9.NewsLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i8.SharedPreferences>()));
    gh.singletonAsync<_i10.NewsRepository>(() async => _i11.NewsRepositoryExt(
          localDataSource: await getAsync<_i9.NewsLocalDataSource>(),
          remoteDataSource: gh<_i6.NewsRemoteDataSource>(),
          networkInfo: gh<_i5.NetworkInfo>(),
        ));
    gh.singletonAsync<_i12.ReviewsListLocalDataSource>(() async =>
        _i12.ReviewsListLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i8.SharedPreferences>()));
    gh.singletonAsync<_i13.ReviewsListRepository>(() async =>
        _i14.ReviewsListReposiExt(
          localDataSource: await getAsync<_i12.ReviewsListLocalDataSource>(),
          remoteDataSource: gh<_i7.ReviewsListRemoteDataSource>(),
          networkInfo: gh<_i5.NetworkInfo>(),
        ));
    gh.singletonAsync<_i15.NewsCase>(() async =>
        _i15.NewsCase(newsRepository: await getAsync<_i10.NewsRepository>()));
    gh.singletonAsync<_i16.ReviewsList>(() async => _i16.ReviewsList(
        reviewsListRepo: await getAsync<_i13.ReviewsListRepository>()));
    gh.singletonAsync<_i17.NewsBloc>(
      () async => _i17.NewsBloc(newsCase: await getAsync<_i15.NewsCase>()),
      dependsOn: [_i15.NewsCase],
    );
    gh.singletonAsync<_i18.ReviewsBloc>(
      () async =>
          _i18.ReviewsBloc(reviewsList: await getAsync<_i16.ReviewsList>()),
      dependsOn: [_i16.ReviewsList],
    );
    return this;
  }
}

class _$InjectableModule extends _i19.InjectableModule {}
