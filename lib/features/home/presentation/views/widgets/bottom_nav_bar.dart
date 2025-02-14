import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/features/home/presentation/views/home_view.dart';
import 'package:stylish_app/features/home/presentation/views/search_view.dart';
import 'package:stylish_app/features/home/presentation/views/setting_view.dart';
import 'package:stylish_app/features/home/presentation/views/shop_view.dart';
import 'package:stylish_app/features/home/presentation/views/trending_products_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    List<Widget> buildScreens() {
      return [
        HomeView(),
        TrendingProductsView(),
        ShopView(),
        SearchView(),
        SettingView()
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          title: ("Wishlist"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
          inactiveIcon: Icon(
            CupertinoIcons.cart,
            color: Colors.black,
          ),
          title: (""),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.search),
          title: ("Search"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("Setting"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      // popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.white,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property
    );
  }
}
