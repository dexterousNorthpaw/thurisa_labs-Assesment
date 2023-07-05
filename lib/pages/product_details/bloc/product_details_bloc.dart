import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:thurisa_labs/pages/product_details/model/products_details_model.dart';
import 'package:thurisa_labs/pages/product_details/repos/product_details_repo.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc() : super(ProductDetailsInitial()) {
    on<ProductDetailInitialFetchEvent>(productDetailsInitialFetchEvent);
  }

  FutureOr<void> productDetailsInitialFetchEvent(
      ProductDetailInitialFetchEvent event,
      Emitter<ProductDetailsState> emit) async{
    emit(ProductDetailsFetchLoadingState());

    ProductDetailsModel? productDetails = await ProductDetailsRepo.fetchDetails();

    emit(ProductDetailsFetchSuccessState(productDetails));
  }
}
