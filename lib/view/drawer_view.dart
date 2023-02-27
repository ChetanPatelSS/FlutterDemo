import 'package:flutter/material.dart';
import 'package:fpp/model/drawer_item_model.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/view/error_screen.dart';
import 'package:fpp/view/home_tab_bar_screen.dart';
import 'package:fpp/view/tab_appointment_screen.dart';
import 'package:fpp/view/tab_bar_screen.dart';
import 'package:fpp/widgets/app_bar/appbar_image.dart';
import 'package:fpp/widgets/app_bar/custom_app_bar.dart';
import 'package:provider/provider.dart';
import '../view_model/drawer_view_model.dart';
import 'contact_us_screen.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DrawerViewState();
  }
}

class DrawerViewState extends State<DrawerView> with AutomaticKeepAliveClientMixin{

  final drawerItems = [
    DrawerItem("Demo 1", Icons.rss_feed),
    DrawerItem("Demo 2", Icons.local_pizza),
    DrawerItem("Demo 3", Icons.info)
  ];

  List<Widget> pages = [
    //const TabAppointmentScreenView(),
    const HomeTabBarScreen(initTab: CurrentTab.Appointment),
    const ErrorScreen(error: 'Home'),
    // const ContactUsScreen(name: 'Test',),
    const TabBarScreen(initTab: CurrentTabItem.contactus),
  ];

  @override
  Widget build(BuildContext context) {
    var drawerProvider = Provider.of<DrawerViewModel>(context,listen: true);
    drawerProvider.isRemoveRepeatedScreen = false;
    drawerProvider.setDrawerMenus(drawerItems, pages);
    final GlobalKey<ScaffoldState> _Key = GlobalKey();
    return WillPopScope(
      onWillPop: ()async{
        return drawerProvider.checkBackStack();
      },
      child: Scaffold(
        key: _Key,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 16,
              top: 17,
              bottom: 15,
            ),
            onTap: (){
              _Key.currentState?.openDrawer();
            },
          ),
          title: AppbarImage(
            height: getVerticalSize(
              19,
            ),
            width: getHorizontalSize(
              110,
            ),
            svgPath: ImageConstant.imgGroup,

          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                right: 16,
              ),
            ),
          ],
          styleType: Style.bgFillLightblue600,
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                  accountName: Text("John Doe"), accountEmail: Text('pro@gmail.com')),
              Column(children: drawerProvider.setDrawerOptions(context))
            ],
          ),
        ),
        //body: _getDrawerItemWidget(_selectedDrawerIndex),
        body: IndexedStack(
          index: drawerProvider.selectedDrawerIndex,
          children: drawerProvider.getPages(),
        ),
      ),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}