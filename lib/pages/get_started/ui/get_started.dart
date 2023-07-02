import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thurisa_labs/pages/drawer_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (context, child) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: const Color.fromRGBO(225, 75, 58, 1),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    height: 73.h,
                    width: 73.w,
                    margin: EdgeInsets.only(left: 49.w, top: 56.h),
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 51.w,
                    ),
                    child: Text(
                      "Food for\n"
                      "Everyone",
                      style: TextStyle(
                        letterSpacing: -1.95,
                        fontSize: 65.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 75.h,
                  ),
                  Expanded(
                      child: Stack(
                    children: [
                      Image(
                        fit: BoxFit.fill,
                        width: 609,
                        height: 495.h,
                        image: const AssetImage('assets/images/img.png'),
                      ),
                      Positioned(
                        top: 350.h,
                        left: 71.w,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerScreen()));
                          },
                          child: Container(
                            height: 70.h,
                            width: 314.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: const Color.fromRGBO(255, 70, 10, 1),
                                  fontSize: 17.sp,
                                fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          );
        });
  }
}
