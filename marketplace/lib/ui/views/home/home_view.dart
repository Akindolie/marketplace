import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/ui/views/dashboard/dashboard_view.dart';
import 'package:marketplace/ui/views/settings/settings_view.dart';
import 'package:marketplace/ui/views/voucher/voucher_view.dart';
import 'package:marketplace/ui/views/wallet/wallet_view.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: getViewForIndex(viewModel.currentIndex),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 5,
          selectedItemColor: kcPrimaryColor,
          unselectedItemColor: kcSemiMediumGrey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: viewModel.currentIndex,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: kcDarkGreyColor),
          onTap: viewModel.setIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home_1,
              ),
              activeIcon: Icon(
                Iconsax.home5,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.ticket),
              activeIcon: Icon(
                Iconsax.ticket5,
              ),
              label: 'Voucher',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet_3),
              activeIcon: Icon(
                Iconsax.wallet_35,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.setting),
                label: 'Settings',
                activeIcon: Icon(Iconsax.setting5)),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const DashboardView();
    case 1:
      return const VoucherView();
    case 2:
      return const WalletView();
    case 3:
      return const SettingsView();
    default:
      return const DashboardView();
  }
}
