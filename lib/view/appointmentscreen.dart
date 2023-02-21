import 'package:flutter/material.dart';

// class AppointmentScreen extends StatefulWidget {
//   const AppointmentScreen({Key? key}) : super(key: key);

//   @override
//   State<AppointmentScreen> createState() => _AppointmentScreenState();
// }

// class _AppointmentScreenState extends State<AppointmentScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

class SetAppointmentScreen extends StatelessWidget {
  TextEditingController groupThirtyNineController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool checkbox = false;

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList3 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList4 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList5 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
