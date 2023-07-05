import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thurisa_labs/pages/product_details/ui/product_detail_page.dart';
import 'package:thurisa_labs/pages/products/bloc/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final ProductsBloc productsBloc = ProductsBloc();
  List<String> productDisplay = [];

  @override
  void initState() {
    productsBloc.add(ProductsInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: BlocConsumer<ProductsBloc, ProductsState>(
              bloc: productsBloc,
              listener: (context, state) {},
              builder: (context, state) {
                switch (state.runtimeType) {
                  case ProductsFetchLoadingState:
                    return Center(child: const CircularProgressIndicator());
                  case ProductsFetchSuccessState:
                    final successState = state as ProductsFetchSuccessState;
                    return Container(
                      width:500,
                      // height: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: successState.products.length,
                        itemBuilder: (context, index) {
                          List<String> substrings = successState
                              .products[index].title
                              .toString()
                              .split(" ");
                          return InkWell(
                            onTap: ()async{
                              final SharedPreferences prefs = await SharedPreferences.getInstance();
                              await prefs.setString('id', successState.products[index].id.toString());
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                            },

                            child: Container(
                              margin: EdgeInsets.only(left: 35.w),
                              height: 312.h,
                              width: 220.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                              ),

                            child: Stack(
                              children: [
                                Positioned(
                                  top: 42.h,
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 220.w,
                                    height: 270.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 26.w,
                                  right: 26.w,
                                  bottom: 123.h,
                                  child: Center(
                                    child: Container(
                                      height: 189.h,
                                      width: 168.w,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(successState
                                                .products[index].image
                                                .toString(),),fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 206.h,
                                  left: 48.w,
                                  right: 47.h,
                                  bottom: 54.h,
                                  child: Center(
                                    child: Container(
                                      height: 52.h,
                                      width: 125.w,
                                      child: Text(
                                        "${substrings[0]}  ${substrings[1]} ${substrings[2]}",
                                        // successState.products[index].title
                                        //     .toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 22.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 263.h,
                                    bottom: 30.h,
                                    left: 40.w,
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 24.w),
                                        height: 19.h,
                                        width: 172.w,
                                        child: Text(
                                          successState.products[index].price
                                              .toString(),
                                          style:TextStyle(color: Color.fromRGBO(250, 74, 12, 1),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w700,

                                          ) ,
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                        ),
                          );
                      },
                    ),
                  );
              }

              return Container(
                color: Colors.black,
              );
            },
          ),
        ),
      ],
    );

  }
}
