import 'package:flutter/material.dart';
import 'package:fpp/utils/utils.dart';

class TabAvailibilityScreen extends StatefulWidget {
  const TabAvailibilityScreen({Key? key}) : super(key: key);

  @override
  State<TabAvailibilityScreen> createState() => _TabAvailibilityScreenState();
}

class _TabAvailibilityScreenState extends State<TabAvailibilityScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Coming soon",style: TextStyle(fontSize: 20),),
        ),
    );
  }
}
