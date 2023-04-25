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
import 'package:selim_trade_app/core/platform/network_info.dart' as _i8;
import 'package:selim_trade_app/core/services/api_requester.dart' as _i3;
import 'package:selim_trade_app/feature/main/data/data_sources/reviews/reviews_local_source.dart'
    as _i32;
import 'package:selim_trade_app/feature/main/data/data_sources/reviews/reviews_remote_source.dart'
    as _i13;
import 'package:selim_trade_app/feature/main/data/repositories/reviews_list_repo_ext.dart'
    as _i34;
import 'package:selim_trade_app/feature/main/domain/repositories/reviews_repository.dart'
    as _i33;
import 'package:selim_trade_app/feature/main/domain/usecases/reviews_list.dart'
    as _i42;
import 'package:selim_trade_app/feature/main/presentation/blocs/bloc/reviews_bloc.dart'
    as _i45;
import 'package:selim_trade_app/feature/news/data/data_sources/news/news_local_source.dart'
    as _i28;
import 'package:selim_trade_app/feature/news/data/data_sources/news/news_remote_source.dart'
    as _i10;
import 'package:selim_trade_app/feature/news/data/data_sources/news_list/news_local_source.dart'
    as _i25;
import 'package:selim_trade_app/feature/news/data/data_sources/news_list/news_remote_source.dart'
    as _i9;
import 'package:selim_trade_app/feature/news/data/repositories/news_list_repo_ext.dart'
    as _i27;
import 'package:selim_trade_app/feature/news/data/repositories/news_repository_ext.dart'
    as _i30;
import 'package:selim_trade_app/feature/news/domain/repositories/news_list_repository.dart'
    as _i26;
import 'package:selim_trade_app/feature/news/domain/repositories/news_repository.dart'
    as _i29;
import 'package:selim_trade_app/feature/news/domain/usecases/news_case.dart'
    as _i39;
import 'package:selim_trade_app/feature/news/domain/usecases/news_list_case.dart'
    as _i40;
import 'package:selim_trade_app/feature/news/presentation/bloc/bloc/news_bloc.dart'
    as _i44;
import 'package:selim_trade_app/feature/order/data/datasources/create_order_data_source.dart'
    as _i5;
import 'package:selim_trade_app/feature/order/data/repositories/order_repository_ext.dart'
    as _i12;
import 'package:selim_trade_app/feature/order/domain/repositories/order_repository.dart'
    as _i11;
import 'package:selim_trade_app/feature/order/domain/usecases/order_case.dart'
    as _i31;
import 'package:selim_trade_app/feature/order/presentation/bloc/order_bloc.dart'
    as _i41;
import 'package:selim_trade_app/feature/our_works/data/data_source/works_local_source.dart'
    as _i15;
import 'package:selim_trade_app/feature/our_works/data/data_source/works_remote_source.dart'
    as _i16;
import 'package:selim_trade_app/feature/our_works/data/repositories/work_repository_ext.dart'
    as _i18;
import 'package:selim_trade_app/feature/our_works/domain/repositories/works_repository.dart'
    as _i17;
import 'package:selim_trade_app/feature/our_works/domain/usecases/works_case.dart'
    as _i35;
import 'package:selim_trade_app/feature/our_works/presentation/bloc/works_bloc.dart'
    as _i43;
import 'package:selim_trade_app/feature/services/data/data_source/gate/gate_local_souce.dart'
    as _i20;
import 'package:selim_trade_app/feature/services/data/data_source/gate/gate_remote_source.dart'
    as _i7;
import 'package:selim_trade_app/feature/services/data/data_source/gate_list/gate_list_local_source.dart'
    as _i19;
import 'package:selim_trade_app/feature/services/data/data_source/gate_list/gate_list_remote_source.dart'
    as _i6;
import 'package:selim_trade_app/feature/services/data/repositories/gate_list_repos_ext.dart'
    as _i24;
import 'package:selim_trade_app/feature/services/data/repositories/gate_repository_ext.dart'
    as _i22;
import 'package:selim_trade_app/feature/services/domain/repositories/gate_repository.dart'
    as _i21;
import 'package:selim_trade_app/feature/services/domain/repositories/gates_list_repository.dart'
    as _i23;
import 'package:selim_trade_app/feature/services/domain/usecases/gate_case.dart'
    as _i36;
import 'package:selim_trade_app/feature/services/domain/usecases/gate_list_case.dart'
    as _i37;
import 'package:selim_trade_app/feature/services/presentaion/blocs/bloc/gates_bloc.dart'
    as _i38;
import 'package:selim_trade_app/utils/injectable_module.dart' as _i46;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

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
    gh.singleton<_i5.CreateOrderDataSource>(_i5.CreateOrderDataSourceImpl());
    gh.singleton<_i6.GateListRemoteDataSource>(
        _i6.GateListRemoteDataSourceImpl());
    gh.singleton<_i7.GateRemoteDataSource>(_i7.GateRemoteDataSourceImpl());
    gh.factory<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl());
    gh.singleton<_i9.NewsListRemoteDataSource>(
        _i9.NewsListRemoteDataSourceImpl());
    gh.singleton<_i10.NewsRemoteDataSource>(_i10.NewsRemoteDataSourceImpl());
    gh.singleton<_i11.OrderRepository>(
        _i12.OrderRepositoryExt(dataSource: gh<_i5.CreateOrderDataSource>()));
    gh.singleton<_i13.ReviewsListRemoteDataSource>(
        _i13.ReviewsListRemoteDataSourceImpl());
    gh.factory<_i4.ServerFailure>(
        () => _i4.ServerFailure(errorCode: gh<int>()));
    gh.singletonAsync<_i14.SharedPreferences>(
        () => injectableModule.sharedPreferences);
    gh.singletonAsync<_i15.WorksLocalDataSource>(() async =>
        _i15.WorksLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i14.SharedPreferences>()));
    gh.singleton<_i16.WorksRemoteDataSource>(_i16.WorksRemoteDataSourceImpl());
    gh.singletonAsync<_i17.WorksRepository>(() async => _i18.WorksRepositoryExt(
          localDataSource: await getAsync<_i15.WorksLocalDataSource>(),
          remoteDataSource: gh<_i16.WorksRemoteDataSource>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.singletonAsync<_i19.GateListLocalDataSource>(() async =>
        _i19.GateListLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i14.SharedPreferences>()));
    gh.singletonAsync<_i20.GateLocalDataSource>(() async =>
        _i20.GateLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i14.SharedPreferences>()));
    gh.singletonAsync<_i21.GateRepository>(() async => _i22.GateRepositoryExt(
          remoteDataSource: gh<_i7.GateRemoteDataSource>(),
          localDataSource: await getAsync<_i20.GateLocalDataSource>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.singletonAsync<_i23.GatesListRepository>(
        () async => _i24.GatesListRepositoryExt(
              localDataSource: await getAsync<_i19.GateListLocalDataSource>(),
              remoteDataSource: gh<_i6.GateListRemoteDataSource>(),
              networkInfo: gh<_i8.NetworkInfo>(),
            ));
    gh.singletonAsync<_i25.NewsListLocalDataSource>(() async =>
        _i25.NewsListLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i14.SharedPreferences>()));
    gh.singletonAsync<_i26.NewsListRepository>(
        () async => _i27.NewsListRepositoryExt(
              localDataSource: await getAsync<_i25.NewsListLocalDataSource>(),
              remoteDataSource: gh<_i9.NewsListRemoteDataSource>(),
              networkInfo: gh<_i8.NetworkInfo>(),
            ));
    gh.singletonAsync<_i28.NewsLocalDataSource>(() async =>
        _i28.NewsLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i14.SharedPreferences>()));
    gh.singletonAsync<_i29.NewsRepository>(() async => _i30.NewsRepositoryExt(
          localDataSource: await getAsync<_i28.NewsLocalDataSource>(),
          remoteDataSource: gh<_i10.NewsRemoteDataSource>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.singleton<_i31.OrderCase>(
        _i31.OrderCase(orderRepository: gh<_i11.OrderRepository>()));
    gh.singletonAsync<_i32.ReviewsListLocalDataSource>(() async =>
        _i32.ReviewsListLocalDataSourceImpl(
            sharedPreferences: await getAsync<_i14.SharedPreferences>()));
    gh.singletonAsync<_i33.ReviewsListRepository>(() async =>
        _i34.ReviewsListReposiExt(
          localDataSource: await getAsync<_i32.ReviewsListLocalDataSource>(),
          remoteDataSource: gh<_i13.ReviewsListRemoteDataSource>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.singletonAsync<_i35.WorksCase>(() async => _i35.WorksCase(
        worksRepository: await getAsync<_i17.WorksRepository>()));
    gh.singletonAsync<_i36.GateCase>(() async =>
        _i36.GateCase(gatesRepository: await getAsync<_i21.GateRepository>()));
    gh.singletonAsync<_i37.GateListCase>(() async => _i37.GateListCase(
        gatesListRepository: await getAsync<_i23.GatesListRepository>()));
    gh.singletonAsync<_i38.GatesBloc>(
      () async => _i38.GatesBloc(
        gateCase: await getAsync<_i36.GateCase>(),
        gateListCase: await getAsync<_i37.GateListCase>(),
      ),
      dependsOn: [
        _i36.GateCase,
        _i37.GateListCase,
      ],
    );
    gh.singletonAsync<_i39.NewsCase>(() async =>
        _i39.NewsCase(newsRepository: await getAsync<_i29.NewsRepository>()));
    gh.singletonAsync<_i40.NewsListCase>(() async => _i40.NewsListCase(
        newsListRepository: await getAsync<_i26.NewsListRepository>()));
    gh.singleton<_i41.OrderBloc>(_i41.OrderBloc(
      orderCase: gh<_i31.OrderCase>(),
      networkInfo: gh<_i8.NetworkInfo>(),
    ));
    gh.singletonAsync<_i42.ReviewsList>(() async => _i42.ReviewsList(
        reviewsListRepo: await getAsync<_i33.ReviewsListRepository>()));
    gh.singletonAsync<_i43.WorksBloc>(
      () async => _i43.WorksBloc(worksCase: await getAsync<_i35.WorksCase>()),
      dependsOn: [_i35.WorksCase],
    );
    gh.singletonAsync<_i44.NewsBloc>(
      () async => _i44.NewsBloc(
        newsCase: await getAsync<_i39.NewsCase>(),
        newsListCase: await getAsync<_i40.NewsListCase>(),
      ),
      dependsOn: [
        _i39.NewsCase,
        _i40.NewsListCase,
      ],
    );
    gh.singletonAsync<_i45.ReviewsBloc>(
      () async =>
          _i45.ReviewsBloc(reviewsList: await getAsync<_i42.ReviewsList>()),
      dependsOn: [_i42.ReviewsList],
    );
    return this;
  }
}

class _$InjectableModule extends _i46.InjectableModule {}
