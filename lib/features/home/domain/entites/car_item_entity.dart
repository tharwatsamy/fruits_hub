import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';

class CarItemEntity extends Equatable {
  final ProductEntity productEntity;
  int count;

  CarItemEntity({required this.productEntity, this.count = 0});

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  increasCount() {
    count++;
  }

  decreasCount() {
    count--;
  }

  @override
  List<Object?> get props => [productEntity];
}
