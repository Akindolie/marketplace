// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:marketplace/ui/views/carousel/carousel_view.dart' as _i8;
import 'package:marketplace/ui/views/dashboard/dashboard_view.dart' as _i7;
import 'package:marketplace/ui/views/extensible_widget/extensible_widget_view.dart'
    as _i12;
import 'package:marketplace/ui/views/home/home_view.dart' as _i2;
import 'package:marketplace/ui/views/product_details/product_details_view.dart'
    as _i9;
import 'package:marketplace/ui/views/product_gallery/product_gallery_view.dart'
    as _i10;
import 'package:marketplace/ui/views/review_widget/review_widget_view.dart'
    as _i13;
import 'package:marketplace/ui/views/settings/settings_view.dart' as _i6;
import 'package:marketplace/ui/views/startup/startup_view.dart' as _i3;
import 'package:marketplace/ui/views/tab_region/tab_region_view.dart' as _i11;
import 'package:marketplace/ui/views/voucher/voucher_view.dart' as _i4;
import 'package:marketplace/ui/views/wallet/wallet_view.dart' as _i5;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const voucherView = '/voucher-view';

  static const walletView = '/wallet-view';

  static const settingsView = '/settings-view';

  static const dashboardView = '/dashboard-view';

  static const carouselView = '/carousel-view';

  static const productDetailsView = '/product-details-view';

  static const productGalleryView = '/product-gallery-view';

  static const tabRegionView = '/tab-region-view';

  static const extensibleWidgetView = '/extensible-widget-view';

  static const reviewWidgetView = '/review-widget-view';

  static const all = <String>{
    homeView,
    startupView,
    voucherView,
    walletView,
    settingsView,
    dashboardView,
    carouselView,
    productDetailsView,
    productGalleryView,
    tabRegionView,
    extensibleWidgetView,
    reviewWidgetView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.voucherView,
      page: _i4.VoucherView,
    ),
    _i1.RouteDef(
      Routes.walletView,
      page: _i5.WalletView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i6.SettingsView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i7.DashboardView,
    ),
    _i1.RouteDef(
      Routes.carouselView,
      page: _i8.CarouselView,
    ),
    _i1.RouteDef(
      Routes.productDetailsView,
      page: _i9.ProductDetailsView,
    ),
    _i1.RouteDef(
      Routes.productGalleryView,
      page: _i10.ProductGalleryView,
    ),
    _i1.RouteDef(
      Routes.tabRegionView,
      page: _i11.TabRegionView,
    ),
    _i1.RouteDef(
      Routes.extensibleWidgetView,
      page: _i12.ExtensibleWidgetView,
    ),
    _i1.RouteDef(
      Routes.reviewWidgetView,
      page: _i13.ReviewWidgetView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.VoucherView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.VoucherView(),
        settings: data,
      );
    },
    _i5.WalletView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.WalletView(),
        settings: data,
      );
    },
    _i6.SettingsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SettingsView(),
        settings: data,
      );
    },
    _i7.DashboardView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.DashboardView(),
        settings: data,
      );
    },
    _i8.CarouselView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.CarouselView(),
        settings: data,
      );
    },
    _i9.ProductDetailsView: (data) {
      final args = data.getArgs<ProductDetailsViewArguments>(nullOk: false);
      return _i14.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i9.ProductDetailsView(args.index, key: args.key),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i10.ProductGalleryView: (data) {
      final args = data.getArgs<ProductGalleryViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i10.ProductGalleryView(args.productIndex, key: args.key),
        settings: data,
      );
    },
    _i11.TabRegionView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.TabRegionView(),
        settings: data,
      );
    },
    _i12.ExtensibleWidgetView: (data) {
      final args = data.getArgs<ExtensibleWidgetViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i12.ExtensibleWidgetView(args.childWidget, key: args.key),
        settings: data,
      );
    },
    _i13.ReviewWidgetView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ReviewWidgetView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ProductDetailsViewArguments {
  const ProductDetailsViewArguments({
    required this.index,
    this.key,
  });

  final int index;

  final _i14.Key? key;

  @override
  String toString() {
    return '{"index": "$index", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ProductDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.index == index && other.key == key;
  }

  @override
  int get hashCode {
    return index.hashCode ^ key.hashCode;
  }
}

class ProductGalleryViewArguments {
  const ProductGalleryViewArguments({
    required this.productIndex,
    this.key,
  });

  final int productIndex;

  final _i14.Key? key;

  @override
  String toString() {
    return '{"productIndex": "$productIndex", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ProductGalleryViewArguments other) {
    if (identical(this, other)) return true;
    return other.productIndex == productIndex && other.key == key;
  }

  @override
  int get hashCode {
    return productIndex.hashCode ^ key.hashCode;
  }
}

class ExtensibleWidgetViewArguments {
  const ExtensibleWidgetViewArguments({
    required this.childWidget,
    this.key,
  });

  final _i14.Widget childWidget;

  final _i14.Key? key;

  @override
  String toString() {
    return '{"childWidget": "$childWidget", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ExtensibleWidgetViewArguments other) {
    if (identical(this, other)) return true;
    return other.childWidget == childWidget && other.key == key;
  }

  @override
  int get hashCode {
    return childWidget.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i15.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVoucherView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.voucherView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWalletView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.walletView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCarouselView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.carouselView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductDetailsView({
    required int index,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productDetailsView,
        arguments: ProductDetailsViewArguments(index: index, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductGalleryView({
    required int productIndex,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productGalleryView,
        arguments:
            ProductGalleryViewArguments(productIndex: productIndex, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTabRegionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tabRegionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToExtensibleWidgetView({
    required _i14.Widget childWidget,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.extensibleWidgetView,
        arguments:
            ExtensibleWidgetViewArguments(childWidget: childWidget, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToReviewWidgetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.reviewWidgetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVoucherView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.voucherView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWalletView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.walletView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCarouselView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.carouselView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductDetailsView({
    required int index,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productDetailsView,
        arguments: ProductDetailsViewArguments(index: index, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductGalleryView({
    required int productIndex,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productGalleryView,
        arguments:
            ProductGalleryViewArguments(productIndex: productIndex, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTabRegionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.tabRegionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithExtensibleWidgetView({
    required _i14.Widget childWidget,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.extensibleWidgetView,
        arguments:
            ExtensibleWidgetViewArguments(childWidget: childWidget, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithReviewWidgetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.reviewWidgetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
