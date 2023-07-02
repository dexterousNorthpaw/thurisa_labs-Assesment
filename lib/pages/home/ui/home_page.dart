import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:thurisa_labs/pages/products/ui/products_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 74.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.6.w,
                  ),
                  IconButton(
                      onPressed: () {
                        if(ZoomDrawer.of(context)!.isOpen()){
                          ZoomDrawer.of(context)!.close();
                        }else{
                          ZoomDrawer.of(context)!.open();
                        }
                      }, icon: const Icon(Icons.menu_sharp)),
                  SizedBox(
                    width: 272.4.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                  ),
                  // SizedBox(width: 41.w,),
                ],
              ),
              SizedBox(
                height: 43.33.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 50.w),
                child: Text(
                  "Shopping\n"
                  "Made easy!!!",
                  style: TextStyle(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Container(
                  margin: EdgeInsets.only(left: 50.w),
                  height: 60.h,
                  width: 314.w,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 238, 238, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorOpacityAnimates: true,
                    cursorHeight: 25.h,
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black,
                    ),
                  )),
              SizedBox(
                height: 46.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 75.w),
                height: 33.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Foods"),
                        Container(
                          margin: EdgeInsets.only(right: 20.w),
                          height: 3.h,
                          width: 87.w,
                          color: const Color(0xFFFA4A0C),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Foods"),
                        Container(
                          margin: EdgeInsets.only(right: 20.w),
                          height: 3.h,
                          width: 87.w,
                          color: const Color(0xFFFA4A0C),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Foods"),
                        Container(
                          margin: EdgeInsets.only(right: 20.w),
                          height: 3.h,
                          width: 87.w,
                          color: const Color(0xFFFA4A0C),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Foods"),
                        Container(
                          margin: EdgeInsets.only(right: 20.w),
                          height: 3.h,
                          width: 87.w,
                          color: const Color(0xFFFA4A0C),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              Container(
                height: 18.h,
                  width: 68.w,
                  margin: EdgeInsets.only(left: 315.w,),
                  child: Center(
                    child: Text(
                        "See more",
                    style: TextStyle(fontSize: 15.sp,color: const Color(0xFFFa4A0C)),),
                  )),
              SizedBox(height: 10.h,),
              const Expanded(child: Products())
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/homeIcon.png"),
                  color: Color.fromRGBO(250, 74, 12, 1),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/heartIcon.png"),
                  color: Color(0xFFADADAF),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/userIcon.png"),
                  color: Color(0xFFADADAF),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/icons/historyIcon.png",
                  ),
                  color: Color(0xFFADADAF),
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
