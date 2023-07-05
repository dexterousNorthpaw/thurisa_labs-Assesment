import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:thurisa_labs/pages/home/ui/home_page.dart';
import 'package:thurisa_labs/pages/menu_screen.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  final zoomDrawController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (BuildContext context,child){

      return ZoomDrawer(
          showShadow: true,
          drawerShadowsBackgroundColor: Colors.orange,
          menuBackgroundColor: Color.fromRGBO(250, 74, 12, 1),
          // drawerShadowsBackgroundColor: Colors.white10,
          mainScreenTapClose: true,
          menuScreenTapClose: true,
          androidCloseOnBackTap: true,
          angle: 0,
          controller: zoomDrawController,
          menuScreen: MenuScreen(),
          mainScreen: HomePage()
      );
    });
  }
}
