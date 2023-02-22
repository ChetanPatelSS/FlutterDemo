import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fpp/model/menu_item.dart';
import 'package:fpp/view/list_screen.dart';
import 'package:fpp/view/patient_page.dart';
import 'package:fpp/view/profile_page.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/view/contact_us_screen.dart';
import 'package:fpp/view/drawer_view.dart';
import 'package:fpp/view/error_screen.dart';
import '../view_model/bottom_navigation_scroll_listener.dart';

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPage();
}

class _HomeDashboardPage extends State<HomeDashboardPage> {
  final menuItemList = [
    MenuItem(icon: ImageConstant.imgCalendar, title: 'Home'),
    MenuItem(icon: ImageConstant.imgUser, title: 'Patient'),
    MenuItem(icon: ImageConstant.imgUserGray900, title: 'Profile'),
  ];
  int index = 0;

  getScreens(ScrollController scrollController) {
    final buildBody = [
      const DrawerView(),
      //ListScreen(scrollController: scrollController),
      const PatientPage(),
      const ProfilePage(name: 'Pro'),
    ];
    return buildBody;
  }

  // Scroll controller for menu
  late ScrollController _scrollController;
  double position = 0.0;
  double sensitivityFactor = 20.0;
  ScrollDirection scrollDirection = ScrollDirection.idle;

  // Init state
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  // dispose it as well
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final ScrollController _controller = ScrollController();
  final double _bottomNavBarHeight = getVerticalSize(84);
  late final ScrollListener _model = ScrollListener.initialise(_controller);

  late Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: AnimatedBuilder(
              animation: _model,
              builder: (context, child) {
                return Stack(
                  children: [
                    IndexedStack(
                      index: index,
                      children: [
                        for (int i = 0; i < getScreens(_controller).length; i++)
                          getScreens(_controller)[i]
                      ],
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: _model.bottom,
                      child: _bottomNavBar,
                    ),
                  ],
                );
              },
            )));
  }

  Widget get _bottomNavBar {
    return SizedBox(
      height: _bottomNavBarHeight,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                30,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                30,
              ),
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.lightBlue60026,
              spreadRadius: getHorizontalSize(
                0,
              ),
              blurRadius: getHorizontalSize(
                5,
              ),
              offset: const Offset(
                0,
                -1,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          currentIndex: index,
          onTap: (x) {
            setState(() {
              index = x;
            });
          },
          items: menuItemList
              .map((item) => BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: item.icon,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  color: ColorConstant.gray900,
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    item.title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTitilliumWebRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.12,
                      ),
                      color: ColorConstant.gray900,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: item.icon,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  color: ColorConstant.lightBlue600,
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    item.title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                    AppStyle.txtTitilliumWebRegular12Lightblue600.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.12,
                      ),
                      color: ColorConstant.lightBlue600,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          ))
              .toList(),
        ),
      ),
    );
  }
}
