part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsFailure extends ProductsState {
  final String errMessage;

  ProductsFailure(this.errMessage);
}

final class ProductsSuccess extends ProductsState {
  final List<ProductEntity> products;

  ProductsSuccess(this.products);
}
