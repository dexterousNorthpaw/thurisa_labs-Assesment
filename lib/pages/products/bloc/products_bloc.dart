import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:thurisa_labs/pages/products/models/products_model.dart';
import 'package:thurisa_labs/pages/products/repos/products_repo.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsInitialFetchEvent>(productsInitialFetchEvent);
  }

  FutureOr<void> productsInitialFetchEvent(
      ProductsInitialFetchEvent event, Emitter<ProductsState> emit) async{
    emit(ProductsFetchLoadingState());

    List<ProductsModel> products = await ProductsRepo.fetchProducts();

    emit(ProductsFetchSuccessState(products));

  }
}
