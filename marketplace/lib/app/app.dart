import 'package:marketplace/services/data_service.dart';
import 'package:marketplace/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:marketplace/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:marketplace/ui/views/carousel/carousel_view.dart';
import 'package:marketplace/ui/views/dashboard/dashboard_view.dart';
import 'package:marketplace/ui/views/home/home_view.dart';
import 'package:marketplace/ui/views/product_details/product_details_view.dart';
import 'package:marketplace/ui/views/settings/settings_view.dart';
import 'package:marketplace/ui/views/startup/startup_view.dart';
import 'package:marketplace/ui/views/voucher/voucher_view.dart';
import 'package:marketplace/ui/views/wallet/wallet_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:marketplace/ui/views/product_gallery/product_gallery_view.dart';
import 'package:marketplace/ui/views/tab_region/tab_region_view.dart';
import 'package:marketplace/ui/views/extensible_widget/extensible_widget_view.dart';
import 'package:marketplace/ui/views/review_widget/review_widget_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: VoucherView),
    MaterialRoute(page: WalletView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: CarouselView),
    CustomRoute(
      page: ProductDetailsView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    MaterialRoute(page: ProductGalleryView),
    MaterialRoute(page: TabRegionView),
    MaterialRoute(page: ExtensibleWidgetView),
    MaterialRoute(page: ReviewWidgetView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DataService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
