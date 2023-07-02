// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:thurisa_labs/models/productsModel.dart';
// import 'package:thurisa_labs/repository/products_repo.dart';
//
// part 'home_products_event.dart';
// part 'home_products_state.dart';
//
// class HomeProductsBloc extends Bloc<HomeProductsEvent, HomeProductsState> {
//   final ProductsRepo _productsRepo;
//
//   HomeProductsBloc(this._productsRepo) : super(HomeProductsInitial()) {
//
//     on<HomeProductsEvent>((event, emit) async {
//       emit(HomeProductsInitial());
//       // TODO: implement event handler
//       try {
//         final products = await _productsRepo.getProducts();
//         emit(HomeProductsLoaded(products));
//       } catch(e){
//         emit(HomeProductsError(e.toString()));
//       }
//     });
//   }
// }
