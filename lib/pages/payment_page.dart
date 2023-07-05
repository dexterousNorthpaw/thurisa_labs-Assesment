import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum PaymentMethod { card, bankaccount, paypal }

enum DeliveryMethod { DoorDelivery, pickup }

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentMethod _paymentMethod = PaymentMethod.card;
  DeliveryMethod _deliveryMethod = DeliveryMethod.DoorDelivery;
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
                      "Checkout",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                SizedBox(
                  height: 56.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 53.w),
                  height: 20.h,
                  // width: 97.w,
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
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
                              SizedBox(width: 11.w,),
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
                              SizedBox(width: 11.w,),
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 53.w, top: 20.h, bottom: 20.h),
                  height: 20.h,
                  // width: 97.w,
                  child: Text(
                    "Delivery Method",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 50.w),
                    height: 156.h,
                    width: 315.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Column(
                      children: [
                        RadioListTile(
                            activeColor: const Color.fromRGBO(250, 74, 12, 1),
                            title: const Text("Door Delivery"),
                            value: DeliveryMethod.DoorDelivery,
                            groupValue: _deliveryMethod,
                            onChanged: (DeliveryMethod? value) {
                              setState(() {
                                _deliveryMethod = value!;
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
                            title: const Text("Bank Account"),
                            value: DeliveryMethod.pickup,
                            groupValue: _deliveryMethod,
                            onChanged: (DeliveryMethod? value) {
                              setState(() {
                                _deliveryMethod = value!;
                              });
                            }),
                      ],
                    )),
                SizedBox(
                  height: 41.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.w, right: 50.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Total"),
                      Text(23000.toString()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 51.h,
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
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context));
                    },
                    child: Center(
                      child: Text(
                        "Proceed to Payment",
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

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    // backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
    // title: Text('Please Note'),
    content: Container(
      // margin: EdgeInsets.only(left: 50.w),
      height: 322.h,
      width: 315.w,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(237, 237, 237, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r))),
            width: 315.w,
            height: 66.h,
            child: Stack(
              children: [
                Positioned(
                    top: 17.h,
                    bottom: 19.h,
                    left: 46.w,
                    child: Container(
                        width: 117.w,
                        height: 30.h,
                        child: Text(
                          "Please note",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500),
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 50.w),
              child: Text(
                "DELIVERY TO MAINLAND",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: const Color.fromRGBO(0, 0, 0, 0.5),
                ),
              )),
          Container(
              margin: EdgeInsets.only(left: 50.w),
              child: Text(
                "N1000 - N2000",
                style: TextStyle(fontSize: 17.sp),
              )),
          SizedBox(
            height: 17.h,
          ),
          Divider(
            indent: 45.w,
            endIndent: 30.w,
            thickness: 1.h,
          ),
          SizedBox(
            height: 17.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 50.w),
              child: Text(
                "DELIVERY TO ISLAND",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: const Color.fromRGBO(0, 0, 0, 0.5),
                ),
              )),
          Container(
              margin: EdgeInsets.only(left: 50.w),
              child: Text(
                "N2000 - N3000",
                style: TextStyle(fontSize: 17.sp),
              )),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.w),
            height: 60.h,
            width: 251.w,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Cancel"),
                SizedBox(
                  width: 30.w,
                ),
                Container(
                  height: 60.h,
                  width: 159.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: const Color.fromRGBO(250, 74, 12, 1)),
                  child: const Center(
                    child: Text(
                      'Proceed',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
