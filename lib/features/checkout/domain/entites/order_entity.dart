import 'package:fruits_hub/features/checkout/domain/entites/shipping_address_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/car_item_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/cart_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item.dart';

class OrderEntity {
  final CartEntity cartEntity;
  final bool? payWithCash;
  final ShippingAddressEntity? shippingAddressEntity;
  OrderEntity(
    this.cartEntity, {
    this.payWithCash,
    this.shippingAddressEntity,
  });
}
