import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thurisa_labs/pages/products/bloc/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final ProductsBloc productsBloc = ProductsBloc();

  @override
  void initState() {
    productsBloc.add(ProductsInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: BlocConsumer<ProductsBloc, ProductsState>(
              bloc: productsBloc,
              listener: (context, state) {},
              builder: (context, state) {
                switch (state.runtimeType) {
                  case ProductsFetchLoadingState:
                    return const CircularProgressIndicator();
                  case ProductsFetchSuccessState:
                    final successState = state as ProductsFetchSuccessState;

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: successState.products.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 35, right: 35),
                          height: 312.h,
                          width: 220.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                          ),

                          child: Stack(
                            children: [
                              Positioned(
                                top: 42,
                                bottom: 0,
                                child: Container(
                                  width: 220.w,
                                  height: 270.h,
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 26.w,
                                right: 26.w,
                                bottom: 123.h,
                                child: Container(
                                  height: 189.h,
                                  width: 168.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Image(
                                    height: 189.h,
                                      width: 168.w,
                                      fit: BoxFit.contain,
                                      image: NetworkImage(successState
                                          .products[index].image
                                          .toString())),
                                ),
                              ),
                              Positioned(
                                  left: 48,
                                  right: 47,
                                  bottom: 54,
                                  child: Text(
                                    successState.products[index].title
                                        .toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.sp,
                                    ),
                                  ))
                            ],
                          ),
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   // mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Image(image: NetworkImage(successState.products[index].image.toString())),
                          //     // Text(successState.products[index].title),
                          //     Text(successState.products[index].price.toString())
                          //   ],
                          // ),
                        );
                      },
                    );
                }

                return Container(
                  color: Colors.black,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
