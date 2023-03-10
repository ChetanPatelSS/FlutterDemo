import 'package:flutter/material.dart';
import 'package:fpp/utils/routes/routes_name.dart';
import 'package:fpp/view/patient_add_details_page.dart';
import 'package:fpp/view/tab_appointment_screen.dart';

import '../../view/home_dashboard_page.dart';
import '../../view/home_screen.dart';
import '../../view/login_view.dart';
import '../../view/signup_view.dart';
import '../../view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpView());
      case RoutesName.homePage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeDashboardPage());
      case RoutesName.homeAppointmentPage:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                const TabAppointmentScreenView());
      case RoutesName.setAppointmentScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                const TabAppointmentScreenView());
      case RoutesName.patientAddDetailsPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PatientAddDetailsPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
