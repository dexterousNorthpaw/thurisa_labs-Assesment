import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

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
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Text(
                    "My Offers",
                    style:
                        TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 313.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 47.w),
                  height: 42.h,
                  width: 320.w,
                  child: Text(
                    "ohh snap!  No offers yet",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 91.w),
                  height: 52.h,
                  width: 233.w,
                  child: const Center(
                    child: Text(
                      "Bella dose’t have any offers\n"
                      "yet please check again.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // Container(
                //   height: 70.h,
                //   width: 314.w,
                //   margin: EdgeInsets.only(left: 50.w),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30.r),
                //     color: const Color.fromRGBO(250, 74, 12, 1),
                //   ),
                //   child: InkWell(
                //     onTap: () {
                //       // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                //     },
                //     child: Center(
                //       child: Text(
                //         "Start Ordering",
                //         style: TextStyle(
                //             fontSize: 17.sp,
                //             fontWeight: FontWeight.w600,
                //             color: const Color(0xFFF6F6F9)),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          );
        });
  }
}
