import 'package:flutter/material.dart';
import '../utils/Constants/resources.dart';
import '../view_model/services/splash_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Resources.appLogo,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Do something when the button is pressed
                },
                child: const Text('Privacy Policy'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Image.asset(
//           Resources.appLogo,
//           fit: BoxFit.cover,
//           height: double.infinity,
//           width: double.infinity,
//           alignment: Alignment.center,
//         ),
