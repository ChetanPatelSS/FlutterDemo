import 'package:flutter/material.dart';
import 'package:fpp/view/contact_us_screen.dart';
import 'package:fpp/view/error_screen.dart';

class TabBarScreen extends StatefulWidget {
  final CurrentTabItem initTab;
  const TabBarScreen({Key? key, required this.initTab}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  late CurrentTabItem previousTab;
  late CurrentTabItem currentTab;
  changeTab(CurrentTabItem currentTab){
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
                      tabs: const [Tab(text: "All"), Tab(text: "Favorite")]),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        ErrorScreen(error: "Error Screen"),
                        ContactUsScreen(name: 'Pro'),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),);
  }
}

enum CurrentTabItem { error, contactus }