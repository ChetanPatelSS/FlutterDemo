import 'package:flutter/material.dart';
import 'package:fpp/view/contact_us_screen.dart';
import 'package:fpp/view/error_screen.dart';
import 'package:fpp/view/tab_availibility_screen.dart';
import 'package:fpp/view/tab_appointment_screen.dart';

class HomeTabBarScreen extends StatefulWidget {
  final CurrentTab initTab;
  const HomeTabBarScreen({Key? key, required this.initTab}) : super(key: key);

  @override
  State<HomeTabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<HomeTabBarScreen> {
  late CurrentTab previousTab;
  late CurrentTab currentTab;
  changeTab(CurrentTab currentTab){
    setState(() {
      //previousTab = this.currentTab;
      this.currentTab = currentTab;
    });
  }
  checkBackStack(){
    if(previousTab != currentTab){
      setState(() {
        currentTab = previousTab;
      });
      return false;
    }else{
      return true;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTab = widget.initTab;
    previousTab = currentTab;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return checkBackStack();
      },
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          initialIndex: currentTab.index,
          child: SafeArea(
              child: Column(
                children: [
                  TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      onTap: (index) {
                        //context.go(AppRouter.listViewScreen(CurrentTab.values[index]));
                        //changeTab(CurrentTab.values[index]);
                      },
                      tabs: const [Tab(text: "Appointment"), Tab(text: "Availibility")]),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        TabAppointmentScreenView(),
                        TabAvailabilityScreen(),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),);
  }
}

enum CurrentTab { Appointment, Availibility }