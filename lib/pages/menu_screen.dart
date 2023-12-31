import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thurisa_labs/pages/offers_page.dart';
import 'package:thurisa_labs/pages/order_page.dart';
import 'package:thurisa_labs/pages/profile.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (BuildContext context, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color.fromRGBO(250, 74, 12, 1),
            body: Column(
              children: [
                SizedBox(
                  height: 161.h,
                  width: double.infinity,
                ),
                Container(
                  margin: EdgeInsets.only(left: 38.w),
                  height: 338.h,
                  width: 177.w,
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                        leading: const ImageIcon(
                          AssetImage(
                            "assets/icons/gg_profile.png",
                          ),
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 36.w,
                        endIndent: 9.w,
                        height: 0,
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderPage()));
                        },
                        leading: ImageIcon(
                          AssetImage(
                            "assets/icons/icons8_buy.png",
                          ),
                          // color: Colors.black,
                        ),
                        title: Text(
                          "orders",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 36.w,
                        endIndent: 9.w,
                        height: 0,
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers()));
                        },
                        leading: ImageIcon(
                          const AssetImage(
                            "assets/icons/ic_outline-local-offer.png",
                          ),
                          color: Colors.white,
                          size: 24.sp,
                        ),
                        title: const Text(
                          "Offer and Promo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 36.w,
                        endIndent: 9.w,
                        height: 0,
                      ),
                      ListTile(
                        leading: ImageIcon(
                          const AssetImage(
                            "assets/icons/ic_outline-sticky-note-2.png",
                          ),
                          color: Colors.white,
                          size: 24.sp,
                        ),
                        title: Text(
                          "Privacy policy",
                          style:
                              TextStyle(color: Colors.white, fontSize: 13.sp),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 36.w,
                        endIndent: 9.w,
                        height: 0,
                      ),
                      ListTile(
                        leading: ImageIcon(
                          const AssetImage(
                            "assets/icons/whh_securityalt.png",
                          ),
                          color: Colors.white,
                          size: 24.sp,
                        ),
                        title: const Text(
                          "Security",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 284.h,
                ),
                Container(
                  height: 26.h,
                  width: 150.w,
                  child: ListTile(
                    trailing: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.white, fontSize: 17.sp),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
