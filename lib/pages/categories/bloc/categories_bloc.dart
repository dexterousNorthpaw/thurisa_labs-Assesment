import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesInitialFetchEvent>(categoriesInitialFetchEvent);
  }

  FutureOr<void> categoriesInitialFetchEvent(
      CategoriesInitialFetchEvent event, Emitter<CategoriesState> emit) async {

  }
}
