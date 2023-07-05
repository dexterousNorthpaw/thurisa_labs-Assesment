import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum PaymentMethod { card, bankaccount, paypal }

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  PaymentMethod? _paymentMethod = PaymentMethod.card;

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
                  height: 60.w,
                ),
                Row(
                  children: [
                    SizedBox(width: 41.w,),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 24.sp,
                        )),
                    SizedBox(width: 96.w,),
                    const Text("My Profile"),
                  ],
                ),
                SizedBox(
                  height: 56.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 53.w),
                  height: 20.h,
                  // width: 97.w,
                  child: Text("Information",style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,),),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.w),
                  height: 133.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 16.w,
                          top: 20.h,
                          bottom: 53.h,
                          child: const Image(
                            image: AssetImage("assets/icons/img.png"),
                          )),
                      Positioned(
                          top: 20.h,
                          left: 91.w,
                          right: 33.w,
                          child: Container(
                            height: 87.h,
                            width: 191.w,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Marvis Ogedengbe",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600)),
                                Text("dosamarvis@gmail.com",style: TextStyle(fontSize: 13.sp)),
                                Container(
                                  height: 32.h,
                                  width: 191.w,
                                  child: Text("No 15 uti street off ovie palace\n"
                                      "road effurun delta state",style: TextStyle(fontSize: 13.sp),),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 53.w),
                  height: 20.h,
                  // width: 97.w,
                  child: Text("Payment Method",style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,),),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.w),
                  height: 231.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioListTile(
                          activeColor: const Color.fromRGBO(250, 74, 12, 1),
                          title: Row(
                            children: [
                              Image(
                                  height: 40.h,
                                  width: 40.w,
                                  image: const AssetImage(
                                      "assets/icons/cardIcon.png")),
                              const Text("Card"),
                            ],
                          ),
                          value: PaymentMethod.card,
                          groupValue: _paymentMethod,
                          onChanged: (PaymentMethod? value) {
                            setState(() {
                              _paymentMethod = value!;
                            });
                          }),
                      Divider(
                        color: Colors.black,
                        indent: 51.w,
                        endIndent: 32.w,
                        height: 0,
                      ),
                      RadioListTile(
                          activeColor: const Color.fromRGBO(250, 74, 12, 1),
                          title: Row(
                            children: [
                              Image(
                                  height: 40.h,
                                  width: 40.w,
                                  image: const AssetImage(
                                      "assets/icons/bankIcon.png")),
                              const Text("Bank Account"),
                            ],
                          ),
                          value: PaymentMethod.bankaccount,
                          groupValue: _paymentMethod,
                          onChanged: (PaymentMethod? value) {
                            setState(() {
                              _paymentMethod = value!;
                            });
                          }),
                      Divider(
                        color: Colors.black,
                        indent: 51.w,
                        endIndent: 32.w,
                        height: 0,
                      ),
                      RadioListTile(
                          activeColor: const Color.fromRGBO(250, 74, 12, 1),
                          title: Row(
                            children: [
                              Image(
                                  height: 40.h,
                                  width: 40.w,
                                  image: const AssetImage(
                                      "assets/icons/paypalIcon.png")),
                              const Text("PayPal"),
                            ],
                          ),
                          value: PaymentMethod.paypal,
                          groupValue: _paymentMethod,
                          onChanged: (PaymentMethod? value) {
                            setState(() {
                              _paymentMethod = value!;
                            });
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150.h,
                ),
                Container(
                  height: 70.h,
                  width: 314.w,
                  margin: EdgeInsets.only(left: 50.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: const Color.fromRGBO(250, 74, 12, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF6F6F9)),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
