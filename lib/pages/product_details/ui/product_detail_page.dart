import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thurisa_labs/pages/product_details/bloc/product_details_bloc.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final ProductDetailsBloc productDetailsBloc = ProductDetailsBloc();
  List<String> productNameDisplay = [];

  @override
  void initState() {
    productDetailsBloc.add(ProductDetailInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
          ),
          Container(
            // margin: EdgeInsets.only(top: 60.h),
            child: Row(
              children: [
                SizedBox(
                  width: 41.w,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left_outlined,
                      size: 24.sp,
                    )),
                SizedBox(
                  width: 270.w,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 20.sp,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 48.w),
            height: 396.h,
            width: 319.w,
            child: BlocConsumer(
              bloc: productDetailsBloc,
              listener: (context, state) {},
              builder: (context, state) {
                switch (state.runtimeType) {
                  case ProductDetailsFetchLoadingState:
                    return Center(child: CircularProgressIndicator());
                  case ProductDetailsFetchSuccessState:
                    final successState =
                        state as ProductDetailsFetchSuccessState;
                    List<String> substrings = successState.productDetails!.title
                        .toString()
                        .split(" ");

                    return Column(
                      children: [
                        Container(
                          height: 241.h,
                          width: 241.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(241.r),
                          ),
                          child: Image(
                              fit: BoxFit.contain,
                              image: NetworkImage(
                                  successState.productDetails!.image)),
                        ),
                        SizedBox(
                          height: 31.h,
                        ),
                        SizedBox(
                          height: 41.h,
                        ),
                        Text(
                          "${substrings[0]} ${substrings[1]} ${substrings[2]}",
                          style: TextStyle(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          successState.productDetails!.price.toString(),
                          style: TextStyle(
                              fontSize: 22.sp,
                              color: Color.fromRGBO(250, 72, 14, 1),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    );
                }
                return Container();
              },
            ),
          ),
          SizedBox(
            height: 43.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 48.w),
              height: 20.h,
              width: 93.w,
              child: Text(
                "Delivery Info",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
              )),
          Container(
            margin: EdgeInsets.only(left: 48.w),
            height: 77.h,
            width: 297.w,
            child: Text(
                "Delivered between monday aug \n"
                "and thursday 20 from 8pm to 91:32 pm",
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 48.w),
            height: 20.h,
            child: Text("Return Policy",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600)),
          ),
          Container(
            margin: EdgeInsets.only(left: 48.w),
            height: 100.h,
            width: 297.w,
            child: Text(
                "All our foods are double checked before\n"
                " leaving our stores so by any case you\n "
                "found a broken food please contact our\n"
                " hotline immediately.",
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 48.w),
              height: 70.h,
              width: 314.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Color.fromRGBO(250, 72, 14, 1)),
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Color(0xFFF6F6F9),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
