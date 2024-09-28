import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/car_item_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/cart_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity([]);
  void addProduct(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExis(productEntity);
    if (isProductExist) {
      // increase count product
    } else {
      CarItemEntity carItemEntity = CarItemEntity(
        productEntity: productEntity,
        count: 1,
      );
      cartEntity.addCartItem(carItemEntity);
    }

    emit(CartItemAdded());
  }
}
