import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thurisa_labs/pages/products/ui/products_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
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
                      onPressed: () {}, icon: const Icon(Icons.menu_sharp)),
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
              SizedBox(
                height: 33,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        const Text("Foods"),
                        Container(
                          margin: EdgeInsets.only(left:75.w,right: 20.w),
                          height: 3.h,
                          width: 87.w,
                          color: Color(0xFFFA4A0C),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Drinks"),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Snacks"),

                      ],
                    ),
                    Column(
                      children: [
                        const Text("Sauce"),
                        Container(
                          height: 3.h,
                          width: 87.w,
                        ),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     const Text("Foods"),
                    //     Container(
                    //       height: 3.h,
                    //       width: 87.w,
                    //       color: Colors.red,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              const Expanded(child: Products())
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 10.h,
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
