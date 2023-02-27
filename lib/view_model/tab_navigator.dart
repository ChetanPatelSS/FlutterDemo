import 'package:flutter/material.dart';
import 'package:fpp/view/drawer_view.dart';
import 'package:fpp/view/patient_page.dart';
import 'package:fpp/view/profile_page.dart';

import '../view/home_dashboard_page.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator3 extends StatelessWidget {
  const TabNavigator3({super.key, required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final BottomNavigationTabItem tabItem;

  @override
  Widget build(BuildContext context) {

    Widget child = const DrawerView();
    if(tabItem == BottomNavigationTabItem.home) {
      child = const DrawerView();
    } else if(tabItem == BottomNavigationTabItem.patient) {
      child = const PatientPage();
    } else if(tabItem == BottomNavigationTabItem.profile) {
      child = const ProfilePage(name: "My Profile");
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => child
        );
      },
    );
  }
}