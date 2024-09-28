import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/car_item_entity.dart';

class CartEntity {
  final List<CarItemEntity> cartItems;

  CartEntity(this.cartItems);

  addCartItem(CarItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }

  bool isExis(ProductEntity product) {
    for (var carItem in cartItems) {
      if (carItem.productEntity == product) {
        return true;
      }
    }
    return false;
  }

  CarItemEntity getCarItem(ProductEntity product) {
    for (var carItem in cartItems) {
      if (carItem.productEntity == product) {
        return carItem;
      }
    }
    return CarItemEntity(productEntity: product, count: 1);
  }
}
