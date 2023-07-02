part of 'products_bloc.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsFetchLoadingState extends ProductsState{}

class ProductsFetchErrorState extends ProductsState{}

class ProductsFetchSuccessState extends ProductsState{
  final List<ProductsModel> products;

  ProductsFetchSuccessState(this.products);
}
