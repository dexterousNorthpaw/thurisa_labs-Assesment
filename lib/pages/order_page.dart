import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thurisa_labs/pages/home/ui/home_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (BuildContext context, child) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.w,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 41.w,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 24.sp,
                        )),
                    SizedBox(
                      width: 96.w,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                SizedBox(
                  height: 192.h,
                ),
                Center(
                  child: Container(
                    child: Image.asset('assets/icons/img_2.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 114.w),
                  height: 33.h,
                  width: 186.w,
                  child: Text(
                    "No orders yet",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 97.w),
                  height: 40.h,
                  width: 220.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Hit the orange button down\n"
                    "below to Create an order",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 270.h,
                ),
                Container(
                  height: 70.h,
                  width: 314.w,
                  margin: EdgeInsets.only(left: 50.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: const Color.fromRGBO(250, 74, 12, 1),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Center(
                      child: Text(
                        "Start Ordering",
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFF6F6F9)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
