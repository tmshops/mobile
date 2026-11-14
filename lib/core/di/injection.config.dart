// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_ce/hive_ce.dart' as _i1055;
import 'package:hive_ce_flutter/hive_ce_flutter.dart' as _i965;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tmshop/core/auth/auth_cubit.dart' as _i154;
import 'package:tmshop/core/auth/session_data.dart' as _i734;
import 'package:tmshop/core/auth/session_repository.dart' as _i238;
import 'package:tmshop/core/auth/token_storage.dart' as _i274;
import 'package:tmshop/core/cart/cart_cubit.dart' as _i1001;
import 'package:tmshop/core/cart/cart_repository.dart' as _i361;
import 'package:tmshop/core/dev/fake_backend/fake_auth_backend.dart' as _i107;
import 'package:tmshop/core/dev/fake_backend/fake_config_backend.dart' as _i211;
import 'package:tmshop/core/dev/fake_backend/fake_favourites_backend.dart'
    as _i994;
import 'package:tmshop/core/dev/fake_backend/fake_info_backend.dart' as _i385;
import 'package:tmshop/core/dev/fake_backend/fake_notifications_backend.dart'
    as _i605;
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart' as _i435;
import 'package:tmshop/core/dev/fake_backend/fake_promotions_backend.dart'
    as _i636;
import 'package:tmshop/core/dev/fake_backend/fake_reviews_backend.dart' as _i58;
import 'package:tmshop/core/dev/fake_backend/fake_settings_backend.dart'
    as _i333;
import 'package:tmshop/core/dev/fake_backend/fake_wallet_backend.dart'
    as _i1035;
import 'package:tmshop/core/di/register_module.dart' as _i730;
import 'package:tmshop/core/favourites/favourites_cubit.dart' as _i935;
import 'package:tmshop/core/favourites/favourites_repository.dart' as _i703;
import 'package:tmshop/core/locale/locale_cubit.dart' as _i280;
import 'package:tmshop/core/locale/locale_repository.dart' as _i630;
import 'package:tmshop/core/network/connectivity_cubit.dart' as _i726;
import 'package:tmshop/core/network/network_info.dart' as _i566;
import 'package:tmshop/core/notifications/notifications_counter.dart' as _i363;
import 'package:tmshop/core/price_alerts/price_alerts_cubit.dart' as _i1065;
import 'package:tmshop/core/price_alerts/price_alerts_repository.dart' as _i944;
import 'package:tmshop/core/product/data/variants_repository_impl.dart'
    as _i331;
import 'package:tmshop/core/product/domain/product_variants.dart' as _i623;
import 'package:tmshop/core/product/presentation/variant_picker_cubit.dart'
    as _i508;
import 'package:tmshop/core/region/region_cubit.dart' as _i627;
import 'package:tmshop/core/region/region_data_source.dart' as _i19;
import 'package:tmshop/core/region/region_repository.dart' as _i526;
import 'package:tmshop/core/viewed/viewed_product.dart' as _i263;
import 'package:tmshop/core/viewed/viewed_repository_impl.dart' as _i663;
import 'package:tmshop/features/auth/data/datasources/login_remote_data_source.dart'
    as _i14;
import 'package:tmshop/features/auth/data/repositories/login_repository_impl.dart'
    as _i300;
import 'package:tmshop/features/auth/domain/repositories/login_repository.dart'
    as _i717;
import 'package:tmshop/features/auth/domain/usecases/login_use_cases.dart'
    as _i923;
import 'package:tmshop/features/auth/presentation/bloc/login_bloc.dart' as _i26;
import 'package:tmshop/features/cart/data/datasources/cart_remote_data_source.dart'
    as _i408;
import 'package:tmshop/features/cart/data/repositories/cart_quote_repository_impl.dart'
    as _i531;
import 'package:tmshop/features/cart/domain/repositories/cart_quote_repository.dart'
    as _i142;
import 'package:tmshop/features/cart/domain/usecases/get_cart_quote_use_case.dart'
    as _i1039;
import 'package:tmshop/features/cart/presentation/bloc/cart_quote_bloc.dart'
    as _i365;
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
import 'package:tmshop/features/checkout/data/datasources/checkout_data_sources.dart'
    as _i932;
import 'package:tmshop/features/checkout/data/repositories/checkout_repository_impl.dart'
    as _i504;
import 'package:tmshop/features/checkout/domain/repositories/checkout_repository.dart'
    as _i837;
import 'package:tmshop/features/checkout/domain/usecases/checkout_use_cases.dart'
    as _i779;
import 'package:tmshop/features/checkout/presentation/bloc/checkout_bloc.dart'
    as _i888;
import 'package:tmshop/features/checkout/presentation/bloc/payment_cubit.dart'
    as _i850;
import 'package:tmshop/features/config/data/datasources/config_data_sources.dart'
    as _i451;
import 'package:tmshop/features/config/data/repositories/config_repository_impl.dart'
    as _i710;
import 'package:tmshop/features/config/domain/repositories/config_repository.dart'
    as _i496;
import 'package:tmshop/features/config/presentation/bloc/app_config_cubit.dart'
    as _i10;
import 'package:tmshop/features/favourites/data/datasources/favourite_offers_remote_data_source.dart'
    as _i46;
import 'package:tmshop/features/favourites/data/repositories/favourite_offers_repository_impl.dart'
    as _i610;
import 'package:tmshop/features/favourites/domain/repositories/favourite_offers_repository.dart'
    as _i1065;
import 'package:tmshop/features/favourites/presentation/bloc/favourites_view_cubit.dart'
    as _i96;
import 'package:tmshop/features/favourites/presentation/bloc/viewed_cubit.dart'
    as _i927;
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
import 'package:tmshop/features/info/data/datasources/info_data_sources.dart'
    as _i208;
import 'package:tmshop/features/info/data/repositories/info_repository_impl.dart'
    as _i626;
import 'package:tmshop/features/info/domain/repositories/info_repository.dart'
    as _i513;
import 'package:tmshop/features/info/presentation/bloc/info_cubits.dart'
    as _i429;
import 'package:tmshop/features/notifications/data/datasources/notifications_remote_data_source.dart'
    as _i442;
import 'package:tmshop/features/notifications/data/repositories/notifications_repository_impl.dart'
    as _i26;
import 'package:tmshop/features/notifications/domain/repositories/notifications_repository.dart'
    as _i780;
import 'package:tmshop/features/notifications/presentation/bloc/notifications_cubit.dart'
    as _i683;
import 'package:tmshop/features/orders/data/datasources/orders_data_sources.dart'
    as _i867;
import 'package:tmshop/features/orders/data/repositories/orders_repository_impl.dart'
    as _i847;
import 'package:tmshop/features/orders/domain/repositories/orders_repository.dart'
    as _i1026;
import 'package:tmshop/features/orders/domain/usecases/orders_use_cases.dart'
    as _i642;
import 'package:tmshop/features/orders/presentation/bloc/order_cubit.dart'
    as _i756;
import 'package:tmshop/features/orders/presentation/bloc/orders_cubit.dart'
    as _i41;
import 'package:tmshop/features/orders/presentation/bloc/parcel_cubits.dart'
    as _i706;
import 'package:tmshop/features/photo_search/data/datasources/photo_search_remote_data_source.dart'
    as _i502;
import 'package:tmshop/features/photo_search/data/repositories/photo_search_repository_impl.dart'
    as _i398;
import 'package:tmshop/features/photo_search/domain/repositories/photo_search_repository.dart'
    as _i535;
import 'package:tmshop/features/photo_search/presentation/bloc/photo_camera_cubit.dart'
    as _i314;
import 'package:tmshop/features/photo_search/presentation/bloc/photo_search_cubit.dart'
    as _i616;
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
import 'package:tmshop/features/product/domain/usecases/record_view_use_case.dart'
    as _i568;
import 'package:tmshop/features/product/presentation/bloc/product_bloc.dart'
    as _i448;
import 'package:tmshop/features/profile/data/datasources/profile_edit_remote_data_source.dart'
    as _i423;
import 'package:tmshop/features/profile/data/repositories/profile_edit_repository_impl.dart'
    as _i462;
import 'package:tmshop/features/profile/domain/repositories/profile_edit_repository.dart'
    as _i523;
import 'package:tmshop/features/profile/presentation/bloc/phone_change_cubit.dart'
    as _i379;
import 'package:tmshop/features/profile/presentation/bloc/profile_edit_cubit.dart'
    as _i651;
import 'package:tmshop/features/promotions/data/datasources/promotions_remote_data_source.dart'
    as _i507;
import 'package:tmshop/features/promotions/data/repositories/promotions_repository_impl.dart'
    as _i322;
import 'package:tmshop/features/promotions/domain/repositories/promotions_repository.dart'
    as _i1054;
import 'package:tmshop/features/promotions/presentation/bloc/promotions_cubits.dart'
    as _i296;
import 'package:tmshop/features/quick_order/data/datasources/quick_order_remote_data_source.dart'
    as _i616;
import 'package:tmshop/features/quick_order/data/repositories/quick_order_repository_impl.dart'
    as _i1016;
import 'package:tmshop/features/quick_order/domain/repositories/quick_order_repository.dart'
    as _i31;
import 'package:tmshop/features/quick_order/presentation/bloc/quick_order_cubit.dart'
    as _i526;
import 'package:tmshop/features/reviews/data/datasources/reviews_remote_data_source.dart'
    as _i940;
import 'package:tmshop/features/reviews/data/repositories/reviews_repository_impl.dart'
    as _i480;
import 'package:tmshop/features/reviews/domain/repositories/reviews_repository.dart'
    as _i357;
import 'package:tmshop/features/reviews/presentation/bloc/reviews_cubits.dart'
    as _i553;
import 'package:tmshop/features/settings/data/datasources/settings_remote_data_source.dart'
    as _i48;
import 'package:tmshop/features/settings/data/repositories/settings_repository_impl.dart'
    as _i182;
import 'package:tmshop/features/settings/domain/repositories/settings_repository.dart'
    as _i461;
import 'package:tmshop/features/settings/presentation/bloc/channel_link_cubit.dart'
    as _i762;
import 'package:tmshop/features/settings/presentation/bloc/delete_account_cubit.dart'
    as _i827;
import 'package:tmshop/features/settings/presentation/bloc/settings_cubit.dart'
    as _i640;
import 'package:tmshop/features/wallet/data/datasources/wallet_remote_data_source.dart'
    as _i892;
import 'package:tmshop/features/wallet/data/repositories/wallet_repository_impl.dart'
    as _i403;
import 'package:tmshop/features/wallet/domain/repositories/wallet_repository.dart'
    as _i942;
import 'package:tmshop/features/wallet/presentation/bloc/balance_cubit.dart'
    as _i240;
import 'package:tmshop/features/wallet/presentation/bloc/surcharges_cubit.dart'
    as _i354;
import 'package:tmshop/features/wallet/presentation/bloc/wallet_payment_cubit.dart'
    as _i568;

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
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    await gh.singletonAsync<_i965.LazyBox<String>>(
      () => registerModule.configCacheBox,
      instanceName: 'config_cache',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.LazyBox<String>>(
      () => registerModule.catalogCacheBox,
      instanceName: 'catalog_cache',
      preResolve: true,
    );
    gh.lazySingleton<_i211.FakeConfigBackend>(
      () => _i211.FakeConfigBackend(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i994.FakeFavouritesBackend>(
      () => _i994.FakeFavouritesBackend(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i385.FakeInfoBackend>(
      () => _i385.FakeInfoBackend(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i605.FakeNotificationsBackend>(
      () => _i605.FakeNotificationsBackend(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i435.FakeOrdersBackend>(
      () => _i435.FakeOrdersBackend(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i636.FakePromotionsBackend>(
      () => _i636.FakePromotionsBackend(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i451.ConfigLocalDataSource>(
      () => _i451.ConfigLocalDataSourceImpl(
        gh<_i1055.LazyBox<String>>(instanceName: 'config_cache'),
      ),
    );
    await gh.singletonAsync<_i965.Box<String>>(
      () => registerModule.favouritesBox,
      instanceName: 'favourites',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.Box<String>>(
      () => registerModule.settingsBox,
      instanceName: 'settings',
      preResolve: true,
    );
    gh.lazySingleton<_i274.TokenStorage>(
      () => _i274.SecureTokenStorage(gh<_i558.FlutterSecureStorage>()),
    );
    await gh.singletonAsync<_i965.Box<String>>(
      () => registerModule.cartBox,
      instanceName: 'cart',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.Box<String>>(
      () => registerModule.viewedBox,
      instanceName: 'viewed',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.LazyBox<String>>(
      () => registerModule.infoCacheBox,
      instanceName: 'info_cache',
      preResolve: true,
    );
    await gh.singletonAsync<_i965.LazyBox<String>>(
      () => registerModule.accountBox,
      instanceName: 'account',
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
    gh.lazySingleton<_i58.FakeReviewsBackend>(
      () => _i58.FakeReviewsBackend(gh<_i435.FakeOrdersBackend>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1035.FakeWalletBackend>(
      () => _i1035.FakeWalletBackend(gh<_i435.FakeOrdersBackend>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i210.ProductRepository>(
      () => _i270.ProductRepositoryImpl(gh<_i777.ProductRemoteDataSource>()),
    );
    gh.lazySingleton<_i892.WalletRemoteDataSource>(
      () => _i892.FakeWalletRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i1035.FakeWalletBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i331.VariantsRemoteDataSource>(
      () => _i331.FakeVariantsRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i408.CartRemoteDataSource>(
      () => _i408.FakeCartRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1066.HomeRemoteDataSource>(
      () => _i251.FakeHomeRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i940.ReviewsRemoteDataSource>(
      () => _i940.FakeReviewsRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i58.FakeReviewsBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i19.RegionRemoteDataSource>(
      () => _i19.FakeRegionRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i451.ConfigRemoteDataSource>(
      () => _i451.FakeConfigRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i211.FakeConfigBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i502.PhotoSearchRemoteDataSource>(
      () => _i502.FakePhotoSearchRemoteDataSource(gh<_i566.NetworkInfo>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i49.CatalogLocalDataSource>(
      () => _i49.CatalogLocalDataSourceImpl(
        gh<_i1055.LazyBox<String>>(instanceName: 'catalog_cache'),
      ),
    );
    gh.lazySingleton<_i208.InfoRemoteDataSource>(
      () => _i208.FakeInfoRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i385.FakeInfoBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i932.CheckoutLocalDataSource>(
      () => _i932.CheckoutLocalDataSource(
        gh<_i1055.Box<String>>(instanceName: 'settings'),
      ),
    );
    gh.lazySingleton<_i630.LocaleRepository>(
      () => _i630.LocaleRepositoryImpl(
        gh<_i1055.Box<String>>(instanceName: 'settings'),
      ),
    );
    gh.lazySingleton<_i867.OrdersRemoteDataSource>(
      () => _i867.FakeOrdersRemoteDataSource(
        gh<_i435.FakeOrdersBackend>(),
        gh<_i566.NetworkInfo>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i795.HomeLocalDataSource>(
      () => _i795.HomeLocalDataSourceImpl(
        gh<_i1055.LazyBox<String>>(instanceName: 'home_cache'),
      ),
    );
    gh.lazySingleton<_i46.FavouriteOffersRemoteDataSource>(
      () => _i46.FakeFavouriteOffersRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i994.FakeFavouritesBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i357.ReviewsRepository>(
      () => _i480.ReviewsRepositoryImpl(gh<_i940.ReviewsRemoteDataSource>()),
    );
    gh.lazySingleton<_i333.FakeSettingsBackend>(
      () => _i333.FakeSettingsBackend(
        gh<_i435.FakeOrdersBackend>(),
        gh<_i1035.FakeWalletBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i942.WalletRepository>(
      () => _i403.WalletRepositoryImpl(gh<_i892.WalletRemoteDataSource>()),
    );
    gh.lazySingleton<_i932.CheckoutRemoteDataSource>(
      () => _i932.FakeCheckoutRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i435.FakeOrdersBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i263.ViewedRepository>(
      () => _i663.ViewedRepositoryImpl(
        gh<_i1055.Box<String>>(instanceName: 'viewed'),
      ),
    );
    gh.lazySingleton<_i1065.FavouriteOffersRepository>(
      () => _i610.FavouriteOffersRepositoryImpl(
        gh<_i46.FavouriteOffersRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i442.NotificationsRemoteDataSource>(
      () => _i442.FakeNotificationsRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i605.FakeNotificationsBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i363.NotificationsCountRemoteDataSource>(
      () => _i363.FakeNotificationsCountRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i605.FakeNotificationsBackend>(),
      ),
      registerFor: {_dev},
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
    gh.factory<_i927.ViewedCubit>(
      () => _i927.ViewedCubit(gh<_i263.ViewedRepository>()),
    );
    gh.lazySingleton<_i568.RecordViewUseCase>(
      () => _i568.RecordViewUseCase(gh<_i263.ViewedRepository>()),
    );
    gh.lazySingleton<_i208.InfoLocalDataSource>(
      () => _i208.InfoLocalDataSourceImpl(
        gh<_i1055.LazyBox<String>>(instanceName: 'info_cache'),
      ),
    );
    gh.lazySingleton<_i867.OrdersLocalDataSource>(
      () => _i867.OrdersLocalDataSource(
        gh<_i1055.LazyBox<String>>(instanceName: 'account'),
      ),
    );
    gh.lazySingleton<_i944.PriceAlertsRemoteDataSource>(
      () => _i944.FakePriceAlertsRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i994.FakeFavouritesBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i703.FavouritesRemoteDataSource>(
      () => _i703.FakeFavouritesRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i994.FakeFavouritesBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i944.PriceAlertsRepository>(
      () => _i944.PriceAlertsRepositoryImpl(
        gh<_i944.PriceAlertsRemoteDataSource>(),
      ),
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
    gh.factory<_i96.FavouritesViewCubit>(
      () => _i96.FavouritesViewCubit(gh<_i1065.FavouriteOffersRepository>()),
    );
    gh.lazySingleton<_i107.FakeAuthBackend>(
      () => _i107.FakeAuthBackend(gh<_i1035.FakeWalletBackend>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i470.CatalogRepository>(
      () => _i698.CatalogRepositoryImpl(
        gh<_i164.CatalogRemoteDataSource>(),
        gh<_i49.CatalogLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i363.NotificationsCountRepository>(
      () => _i363.NotificationsCountRepositoryImpl(
        gh<_i363.NotificationsCountRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i507.PromotionsRemoteDataSource>(
      () => _i507.FakePromotionsRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i636.FakePromotionsBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i734.SessionRemoteDataSource>(
      () => _i734.FakeSessionRemoteDataSource(
        gh<_i107.FakeAuthBackend>(),
        gh<_i566.NetworkInfo>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i780.NotificationsRepository>(
      () => _i26.NotificationsRepositoryImpl(
        gh<_i442.NotificationsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i496.ConfigRepository>(
      () => _i710.ConfigRepositoryImpl(
        gh<_i451.ConfigRemoteDataSource>(),
        gh<_i451.ConfigLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i465.HomeRepository>(
      () => _i740.HomeRepositoryImpl(
        gh<_i1066.HomeRemoteDataSource>(),
        gh<_i795.HomeLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i10.AppConfigCubit>(
      () => _i10.AppConfigCubit(gh<_i496.ConfigRepository>()),
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
    gh.lazySingleton<_i535.PhotoSearchRepository>(
      () => _i398.PhotoSearchRepositoryImpl(
        gh<_i502.PhotoSearchRemoteDataSource>(),
      ),
    );
    gh.factory<_i621.HomeBloc>(
      () => _i621.HomeBloc(
        gh<_i628.GetCachedHomeUseCase>(),
        gh<_i895.FetchHomeUseCase>(),
      ),
    );
    gh.lazySingleton<_i623.VariantsRepository>(
      () => _i331.VariantsRepositoryImpl(gh<_i331.VariantsRemoteDataSource>()),
    );
    gh.factory<_i240.BalanceCubit>(
      () => _i240.BalanceCubit(gh<_i942.WalletRepository>()),
    );
    gh.factory<_i354.SurchargesCubit>(
      () => _i354.SurchargesCubit(gh<_i942.WalletRepository>()),
    );
    gh.factory<_i568.WalletPaymentCubit>(
      () => _i568.WalletPaymentCubit(gh<_i942.WalletRepository>()),
    );
    gh.lazySingleton<_i513.InfoRepository>(
      () => _i626.InfoRepositoryImpl(
        gh<_i208.InfoRemoteDataSource>(),
        gh<_i208.InfoLocalDataSource>(),
      ),
    );
    gh.factory<_i553.ProductReviewsCubit>(
      () => _i553.ProductReviewsCubit(gh<_i357.ReviewsRepository>()),
    );
    gh.factory<_i553.WriteReviewCubit>(
      () => _i553.WriteReviewCubit(gh<_i357.ReviewsRepository>()),
    );
    gh.factory<_i553.MyReviewsCubit>(
      () => _i553.MyReviewsCubit(gh<_i357.ReviewsRepository>()),
    );
    gh.lazySingleton<_i703.FavouritesRepository>(
      () => _i703.FavouritesRepositoryImpl(
        gh<_i703.FavouritesRemoteDataSource>(),
        gh<_i1055.Box<String>>(instanceName: 'favourites'),
      ),
    );
    gh.lazySingleton<_i837.CheckoutRepository>(
      () => _i504.CheckoutRepositoryImpl(
        gh<_i932.CheckoutRemoteDataSource>(),
        gh<_i932.CheckoutLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i423.ProfileEditRemoteDataSource>(
      () => _i423.FakeProfileEditRemoteDataSource(
        gh<_i107.FakeAuthBackend>(),
        gh<_i274.TokenStorage>(),
        gh<_i566.NetworkInfo>(),
      ),
      registerFor: {_dev},
    );
    gh.factory<_i594.ForYouBloc>(
      () => _i594.ForYouBloc(gh<_i113.GetRecommendationsUseCase>()),
    );
    gh.lazySingleton<_i280.LocaleCubit>(
      () => _i280.LocaleCubit(gh<_i630.LocaleRepository>()),
    );
    gh.lazySingleton<_i48.SettingsRemoteDataSource>(
      () => _i48.FakeSettingsRemoteDataSource(
        gh<_i566.NetworkInfo>(),
        gh<_i333.FakeSettingsBackend>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1026.OrdersRepository>(
      () => _i847.OrdersRepositoryImpl(
        gh<_i867.OrdersRemoteDataSource>(),
        gh<_i867.OrdersLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i14.LoginRemoteDataSource>(
      () => _i14.FakeLoginRemoteDataSource(
        gh<_i107.FakeAuthBackend>(),
        gh<_i566.NetworkInfo>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i935.FavouritesCubit>(
      () => _i935.FavouritesCubit(gh<_i703.FavouritesRepository>()),
    );
    gh.factory<_i314.PhotoCameraCubit>(
      () => _i314.PhotoCameraCubit(gh<_i535.PhotoSearchRepository>()),
    );
    gh.factory<_i616.PhotoSearchCubit>(
      () => _i616.PhotoSearchCubit(gh<_i535.PhotoSearchRepository>()),
    );
    gh.lazySingleton<_i1054.PromotionsRepository>(
      () => _i322.PromotionsRepositoryImpl(
        gh<_i507.PromotionsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1039.GetCartQuoteUseCase>(
      () => _i1039.GetCartQuoteUseCase(gh<_i142.CartQuoteRepository>()),
    );
    gh.lazySingleton<_i461.SettingsRepository>(
      () => _i182.SettingsRepositoryImpl(gh<_i48.SettingsRemoteDataSource>()),
    );
    gh.factory<_i296.PromotionsCubit>(
      () => _i296.PromotionsCubit(gh<_i1054.PromotionsRepository>()),
    );
    gh.factory<_i296.PromotionCubit>(
      () => _i296.PromotionCubit(gh<_i1054.PromotionsRepository>()),
    );
    gh.factory<_i508.VariantPickerCubit>(
      () => _i508.VariantPickerCubit(gh<_i623.VariantsRepository>()),
    );
    gh.factory<_i429.InfoArticleCubit>(
      () => _i429.InfoArticleCubit(gh<_i513.InfoRepository>()),
    );
    gh.factory<_i429.DeliveryTermsCubit>(
      () => _i429.DeliveryTermsCubit(gh<_i513.InfoRepository>()),
    );
    gh.factory<_i429.PickupPointsCubit>(
      () => _i429.PickupPointsCubit(gh<_i513.InfoRepository>()),
    );
    gh.factory<_i429.ContactsCubit>(
      () => _i429.ContactsCubit(gh<_i513.InfoRepository>()),
    );
    gh.factory<_i429.FaqCubit>(
      () => _i429.FaqCubit(gh<_i513.InfoRepository>()),
    );
    gh.lazySingleton<_i238.SessionRepository>(
      () => _i238.SessionRepositoryImpl(
        gh<_i734.SessionRemoteDataSource>(),
        gh<_i274.TokenStorage>(),
        gh<_i1055.LazyBox<String>>(instanceName: 'account'),
      ),
    );
    gh.lazySingleton<_i1065.PriceAlertsCubit>(
      () => _i1065.PriceAlertsCubit(gh<_i944.PriceAlertsRepository>()),
    );
    gh.factory<_i683.NotificationsCubit>(
      () => _i683.NotificationsCubit(gh<_i780.NotificationsRepository>()),
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
    gh.lazySingleton<_i363.NotificationsCounterCubit>(
      () => _i363.NotificationsCounterCubit(
        gh<_i363.NotificationsCountRepository>(),
      ),
    );
    gh.lazySingleton<_i616.QuickOrderRemoteDataSource>(
      () => _i616.FakeQuickOrderRemoteDataSource(
        gh<_i107.FakeAuthBackend>(),
        gh<_i435.FakeOrdersBackend>(),
        gh<_i274.TokenStorage>(),
        gh<_i566.NetworkInfo>(),
      ),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i779.LoadSavedRecipientUseCase>(
      () => _i779.LoadSavedRecipientUseCase(gh<_i837.CheckoutRepository>()),
    );
    gh.lazySingleton<_i779.GetCheckoutPreviewUseCase>(
      () => _i779.GetCheckoutPreviewUseCase(gh<_i837.CheckoutRepository>()),
    );
    gh.lazySingleton<_i779.PlaceOrderUseCase>(
      () => _i779.PlaceOrderUseCase(gh<_i837.CheckoutRepository>()),
    );
    gh.lazySingleton<_i779.RestartPaymentUseCase>(
      () => _i779.RestartPaymentUseCase(gh<_i837.CheckoutRepository>()),
    );
    gh.lazySingleton<_i779.GetPaymentStatusUseCase>(
      () => _i779.GetPaymentStatusUseCase(gh<_i837.CheckoutRepository>()),
    );
    gh.factory<_i888.CheckoutBloc>(
      () => _i888.CheckoutBloc(
        gh<_i779.LoadSavedRecipientUseCase>(),
        gh<_i779.GetCheckoutPreviewUseCase>(),
        gh<_i779.PlaceOrderUseCase>(),
      ),
    );
    gh.lazySingleton<_i717.LoginRepository>(
      () => _i300.LoginRepositoryImpl(
        gh<_i14.LoginRemoteDataSource>(),
        gh<_i238.SessionRepository>(),
      ),
    );
    gh.factory<_i850.PaymentCubit>(
      () => _i850.PaymentCubit(
        gh<_i779.GetPaymentStatusUseCase>(),
        gh<_i779.RestartPaymentUseCase>(),
      ),
    );
    gh.factory<_i733.CategoryTreeBloc>(
      () => _i733.CategoryTreeBloc(
        gh<_i292.GetCachedCategoryTreeUseCase>(),
        gh<_i579.FetchCategoryTreeUseCase>(),
      ),
    );
    gh.factory<_i762.ChannelLinkCubit>(
      () => _i762.ChannelLinkCubit(gh<_i461.SettingsRepository>()),
    );
    gh.factory<_i827.DeleteAccountCubit>(
      () => _i827.DeleteAccountCubit(gh<_i461.SettingsRepository>()),
    );
    gh.factory<_i640.SettingsCubit>(
      () => _i640.SettingsCubit(gh<_i461.SettingsRepository>()),
    );
    gh.factory<_i448.ProductBloc>(
      () => _i448.ProductBloc(
        gh<_i597.GetRecentProductUseCase>(),
        gh<_i1046.FetchProductUseCase>(),
        gh<_i86.GetDeliveryQuotesUseCase>(),
        gh<_i568.RecordViewUseCase>(),
      ),
    );
    gh.lazySingleton<_i31.QuickOrderRepository>(
      () => _i1016.QuickOrderRepositoryImpl(
        gh<_i616.QuickOrderRemoteDataSource>(),
        gh<_i238.SessionRepository>(),
      ),
    );
    gh.lazySingleton<_i523.ProfileEditRepository>(
      () => _i462.ProfileEditRepositoryImpl(
        gh<_i423.ProfileEditRemoteDataSource>(),
        gh<_i238.SessionRepository>(),
      ),
    );
    gh.factory<_i365.CartQuoteBloc>(
      () => _i365.CartQuoteBloc(gh<_i1039.GetCartQuoteUseCase>()),
    );
    gh.lazySingleton<_i642.GetOrdersUseCase>(
      () => _i642.GetOrdersUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.GetOrderUseCase>(
      () => _i642.GetOrderUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.GetParcelsUseCase>(
      () => _i642.GetParcelsUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.GetParcelUseCase>(
      () => _i642.GetParcelUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.CancelOrderUseCase>(
      () => _i642.CancelOrderUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.ResolveProblemUseCase>(
      () => _i642.ResolveProblemUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.RepeatOrderUseCase>(
      () => _i642.RepeatOrderUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.lazySingleton<_i642.SendParcelNowUseCase>(
      () => _i642.SendParcelNowUseCase(gh<_i1026.OrdersRepository>()),
    );
    gh.factory<_i154.AuthCubit>(
      () => _i154.AuthCubit(gh<_i238.SessionRepository>()),
    );
    gh.factory<_i613.FiltersBloc>(
      () => _i613.FiltersBloc(gh<_i970.GetCategoryFacetsUseCase>()),
    );
    gh.factory<_i706.ParcelsCubit>(
      () => _i706.ParcelsCubit(gh<_i642.GetParcelsUseCase>()),
    );
    gh.factory<_i41.OrdersCubit>(
      () => _i41.OrdersCubit(
        gh<_i642.GetOrdersUseCase>(),
        gh<_i642.RepeatOrderUseCase>(),
      ),
    );
    gh.factory<_i729.CategoryProductsBloc>(
      () => _i729.CategoryProductsBloc(
        gh<_i128.GetCategoryUseCase>(),
        gh<_i98.GetCategoryProductsUseCase>(),
      ),
    );
    gh.factory<_i706.ParcelCubit>(
      () => _i706.ParcelCubit(
        gh<_i642.GetParcelUseCase>(),
        gh<_i642.SendParcelNowUseCase>(),
      ),
    );
    gh.lazySingleton<_i923.RequestCodeUseCase>(
      () => _i923.RequestCodeUseCase(gh<_i717.LoginRepository>()),
    );
    gh.lazySingleton<_i923.VerifyCodeUseCase>(
      () => _i923.VerifyCodeUseCase(gh<_i717.LoginRepository>()),
    );
    gh.factory<_i379.PhoneChangeCubit>(
      () => _i379.PhoneChangeCubit(gh<_i523.ProfileEditRepository>()),
    );
    gh.factory<_i651.ProfileEditCubit>(
      () => _i651.ProfileEditCubit(gh<_i523.ProfileEditRepository>()),
    );
    gh.factory<_i526.QuickOrderCubit>(
      () => _i526.QuickOrderCubit(gh<_i31.QuickOrderRepository>()),
    );
    gh.factory<_i26.LoginBloc>(
      () => _i26.LoginBloc(
        gh<_i923.RequestCodeUseCase>(),
        gh<_i923.VerifyCodeUseCase>(),
      ),
    );
    gh.factory<_i756.OrderCubit>(
      () => _i756.OrderCubit(
        gh<_i642.GetOrderUseCase>(),
        gh<_i642.CancelOrderUseCase>(),
        gh<_i642.ResolveProblemUseCase>(),
        gh<_i642.RepeatOrderUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i730.RegisterModule {}
