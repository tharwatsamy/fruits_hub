import 'package:fruits_hub/core/entities/product_entity.dart';

class CarItemEntity {
  final ProductEntity productEntity;
  int count;

  CarItemEntity({required this.productEntity, this.count = 0});
}
