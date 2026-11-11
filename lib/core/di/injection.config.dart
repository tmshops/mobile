// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_ce/hive_ce.dart' as _i1055;
import 'package:hive_ce_flutter/hive_ce_flutter.dart' as _i965;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tmshop/core/cart/cart_cubit.dart' as _i1001;
import 'package:tmshop/core/cart/cart_repository.dart' as _i361;
import 'package:tmshop/core/di/register_module.dart' as _i730;
import 'package:tmshop/core/locale/locale_cubit.dart' as _i280;
import 'package:tmshop/core/locale/locale_repository.dart' as _i630;
import 'package:tmshop/core/network/connectivity_cubit.dart' as _i726;
import 'package:tmshop/core/network/network_info.dart' as _i566;
import 'package:tmshop/core/region/region_cubit.dart' as _i627;
import 'package:tmshop/core/region/region_data_source.dart' as _i19;
import 'package:tmshop/core/region/region_repository.dart' as _i526;
import 'package:tmshop/features/cart/data/datasources/cart_remote_data_source.dart'
    as _i408;
import 'package:tmshop/features/cart/data/repositories/cart_quote_repository_impl.dart'
    as _i531;
import 'package:tmshop/features/cart/domain/repositories/cart_quote_repository.dart'
    as _i142;
import 'package:tmshop/features/cart/domain/usecases/get_cart_quote_use_case.dart'
    as _i1039;
import 'package:tmshop/features/cart/domain/usecases/get_product_variants_use_case.dart'
    as _i189;
import 'package:tmshop/features/cart/presentation/bloc/cart_quote_bloc.dart'
    as _i365;
import 'package:tmshop/features/cart/presentation/bloc/variant_picker_cubit.dart'
    as _i81;
import 'package:tmshop/features/catalog/data/datasources/catalog_local_data_source.dart'
    as _i49;
import 'package:tmshop/features/catalog/data/datasources/catalog_remote_data_source.dart'
    as _i164;
import 'package:tmshop/features/catalog/data/datasources/fake_catalog_remote_data_source.dart'
    as _i767;
import 'package:tmshop/features/catalog/data/repositories/catalog_repository_impl.dart'
    as _i698;
import 'package:tmshop/features/catalog/domain/repositories/catalog_repository.dart'
    as _i470;
import 'package:tmshop/features/catalog/domain/usecases/fetch_category_tree_use_case.dart'
    as _i579;
import 'package:tmshop/features/catalog/domain/usecases/get_cached_category_tree_use_case.dart'
    as _i292;
import 'package:tmshop/features/catalog/domain/usecases/get_category_facets_use_case.dart'
    as _i970;
import 'package:tmshop/features/catalog/domain/usecases/get_category_products_use_case.dart'
    as _i98;
import 'package:tmshop/features/catalog/domain/usecases/get_category_use_case.dart'
    as _i128;
import 'package:tmshop/features/catalog/presentation/bloc/category_products_bloc.dart'
    as _i729;
import 'package:tmshop/features/catalog/presentation/bloc/category_tree_bloc.dart'
    as _i733;
import 'package:tmshop/features/catalog/presentation/bloc/filters_bloc.dart'
    as _i613;
import 'package:tmshop/features/home/data/datasources/fake_home_remote_data_source.dart'
    as _i251;
import 'package:tmshop/features/home/data/datasources/home_local_data_source.dart'
    as _i795;
import 'package:tmshop/features/home/data/datasources/home_remote_data_source.dart'
    as _i1066;
import 'package:tmshop/features/home/data/repositories/home_repository_impl.dart'
    as _i740;
import 'package:tmshop/features/home/domain/repositories/home_repository.dart'
    as _i465;
import 'package:tmshop/features/home/domain/usecases/fetch_home_use_case.dart'
    as _i895;
import 'package:tmshop/features/home/domain/usecases/get_cached_home_use_case.dart'
    as _i628;
import 'package:tmshop/features/home/domain/usecases/get_recommendations_use_case.dart'
    as _i113;
import 'package:tmshop/features/home/presentation/bloc/for_you_bloc.dart'
    as _i594;
import 'package:tmshop/features/home/presentation/bloc/home_bloc.dart' as _i621;
import 'package:tmshop/features/product/data/datasources/fake_product_remote_data_source.dart'
    as _i682;
import 'package:tmshop/features/product/data/datasources/product_remote_data_source.dart'
    as _i777;
import 'package:tmshop/features/product/data/repositories/product_repository_impl.dart'
    as _i270;
import 'package:tmshop/features/product/domain/repositories/product_repository.dart'
    as _i210;
import 'package:tmshop/features/product/domain/usecases/fetch_product_use_case.dart'
    as _i1046;
import 'package:tmshop/features/product/domain/usecases/get_delivery_quotes_use_case.dart'
    as _i86;
import 'package:tmshop/features/product/domain/usecases/get_recent_product_use_case.dart'
    as _i597;
import 'package:tmshop/features/product/presentation/bloc/product_bloc.dart'
    as _i448;

const String _dev = 'dev';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    await gh.singletonAsync<_i965.LazyBox<String>>(
      () => registerModule.catalogCacheBox,
      instanceName: 'catalog_cache',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.Box<String>>(
      () => registerModule.settingsBox,
      instanceName: 'settings',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.Box<String>>(
      () => registerModule.cartBox,
      instanceName: 'cart',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.LazyBox<String>>(
      () => registerModule.homeCacheBox,
      instanceName: 'home_cache',
      preResolve: true,
    );
    gh.lazySingleton<_i566.NetworkInfo>(
      () => _i566.NetworkInfoImpl(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i777.ProductRemoteDataSource>(
      () => _i682.FakeProductRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i726.ConnectivityCubit>(
      () => _i726.ConnectivityCubit(gh<_i566.NetworkInfo>()),
    );
    gh.lazySingleton<_i164.CatalogRemoteDataSource>(
      () => _i767.FakeCatalogRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i210.ProductRepository>(
      () => _i270.ProductRepositoryImpl(gh<_i777.ProductRemoteDataSource>()),
    );
    gh.lazySingleton<_i408.CartRemoteDataSource>(
      () => _i408.FakeCartRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1066.HomeRemoteDataSource>(
      () => _i251.FakeHomeRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i19.RegionRemoteDataSource>(
      () => _i19.FakeRegionRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i49.CatalogLocalDataSource>(
      () => _i49.CatalogLocalDataSourceImpl(
        gh<_i1055.LazyBox<String>>(instanceName: 'catalog_cache'),
      ),
    );
    gh.lazySingleton<_i630.LocaleRepository>(
      () => _i630.LocaleRepositoryImpl(
        gh<_i1055.Box<String>>(instanceName: 'settings'),
      ),
    );
    gh.lazySingleton<_i795.HomeLocalDataSource>(
      () => _i795.HomeLocalDataSourceImpl(
        gh<_i1055.LazyBox<String>>(instanceName: 'home_cache'),
      ),
    );
    gh.lazySingleton<_i526.RegionRepository>(
      () => _i526.RegionRepositoryImpl(
        gh<_i19.RegionRemoteDataSource>(),
        gh<_i1055.Box<String>>(instanceName: 'settings'),
      ),
    );
    gh.lazySingleton<_i627.RegionCubit>(
      () => _i627.RegionCubit(gh<_i526.RegionRepository>()),
    );
    gh.lazySingleton<_i142.CartQuoteRepository>(
      () => _i531.CartQuoteRepositoryImpl(gh<_i408.CartRemoteDataSource>()),
    );
    gh.lazySingleton<_i361.CartRepository>(
      () => _i361.CartRepositoryImpl(
        gh<_i1055.Box<String>>(instanceName: 'cart'),
      ),
    );
    gh.lazySingleton<_i1001.CartCubit>(
      () => _i1001.CartCubit(gh<_i361.CartRepository>()),
    );
    gh.lazySingleton<_i470.CatalogRepository>(
      () => _i698.CatalogRepositoryImpl(
        gh<_i164.CatalogRemoteDataSource>(),
        gh<_i49.CatalogLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i465.HomeRepository>(
      () => _i740.HomeRepositoryImpl(
        gh<_i1066.HomeRemoteDataSource>(),
        gh<_i795.HomeLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i895.FetchHomeUseCase>(
      () => _i895.FetchHomeUseCase(gh<_i465.HomeRepository>()),
    );
    gh.lazySingleton<_i628.GetCachedHomeUseCase>(
      () => _i628.GetCachedHomeUseCase(gh<_i465.HomeRepository>()),
    );
    gh.lazySingleton<_i113.GetRecommendationsUseCase>(
      () => _i113.GetRecommendationsUseCase(gh<_i465.HomeRepository>()),
    );
    gh.lazySingleton<_i1046.FetchProductUseCase>(
      () => _i1046.FetchProductUseCase(gh<_i210.ProductRepository>()),
    );
    gh.lazySingleton<_i86.GetDeliveryQuotesUseCase>(
      () => _i86.GetDeliveryQuotesUseCase(gh<_i210.ProductRepository>()),
    );
    gh.lazySingleton<_i597.GetRecentProductUseCase>(
      () => _i597.GetRecentProductUseCase(gh<_i210.ProductRepository>()),
    );
    gh.factory<_i621.HomeBloc>(
      () => _i621.HomeBloc(
        gh<_i628.GetCachedHomeUseCase>(),
        gh<_i895.FetchHomeUseCase>(),
      ),
    );
    gh.factory<_i594.ForYouBloc>(
      () => _i594.ForYouBloc(gh<_i113.GetRecommendationsUseCase>()),
    );
    gh.lazySingleton<_i280.LocaleCubit>(
      () => _i280.LocaleCubit(gh<_i630.LocaleRepository>()),
    );
    gh.factory<_i448.ProductBloc>(
      () => _i448.ProductBloc(
        gh<_i597.GetRecentProductUseCase>(),
        gh<_i1046.FetchProductUseCase>(),
        gh<_i86.GetDeliveryQuotesUseCase>(),
      ),
    );
    gh.lazySingleton<_i1039.GetCartQuoteUseCase>(
      () => _i1039.GetCartQuoteUseCase(gh<_i142.CartQuoteRepository>()),
    );
    gh.lazySingleton<_i189.GetProductVariantsUseCase>(
      () => _i189.GetProductVariantsUseCase(gh<_i142.CartQuoteRepository>()),
    );
    gh.lazySingleton<_i579.FetchCategoryTreeUseCase>(
      () => _i579.FetchCategoryTreeUseCase(gh<_i470.CatalogRepository>()),
    );
    gh.lazySingleton<_i292.GetCachedCategoryTreeUseCase>(
      () => _i292.GetCachedCategoryTreeUseCase(gh<_i470.CatalogRepository>()),
    );
    gh.lazySingleton<_i970.GetCategoryFacetsUseCase>(
      () => _i970.GetCategoryFacetsUseCase(gh<_i470.CatalogRepository>()),
    );
    gh.lazySingleton<_i98.GetCategoryProductsUseCase>(
      () => _i98.GetCategoryProductsUseCase(gh<_i470.CatalogRepository>()),
    );
    gh.lazySingleton<_i128.GetCategoryUseCase>(
      () => _i128.GetCategoryUseCase(gh<_i470.CatalogRepository>()),
    );
    gh.factory<_i733.CategoryTreeBloc>(
      () => _i733.CategoryTreeBloc(
        gh<_i292.GetCachedCategoryTreeUseCase>(),
        gh<_i579.FetchCategoryTreeUseCase>(),
      ),
    );
    gh.factory<_i365.CartQuoteBloc>(
      () => _i365.CartQuoteBloc(gh<_i1039.GetCartQuoteUseCase>()),
    );
    gh.factory<_i613.FiltersBloc>(
      () => _i613.FiltersBloc(gh<_i970.GetCategoryFacetsUseCase>()),
    );
    gh.factory<_i81.VariantPickerCubit>(
      () => _i81.VariantPickerCubit(gh<_i189.GetProductVariantsUseCase>()),
    );
    gh.factory<_i729.CategoryProductsBloc>(
      () => _i729.CategoryProductsBloc(
        gh<_i128.GetCategoryUseCase>(),
        gh<_i98.GetCategoryProductsUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i730.RegisterModule {}
