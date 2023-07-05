part of 'product_details_bloc.dart';

@immutable
abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsFetchLoadingState extends ProductDetailsState{}

class ProductDetailsFetchErrorState extends ProductDetailsState{}

class ProductDetailsFetchSuccessState extends ProductDetailsState{
  final ProductDetailsModel? productDetails;

  ProductDetailsFetchSuccessState(this.productDetails);

}
