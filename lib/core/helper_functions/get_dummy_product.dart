import 'dart:io';

import 'package:fruits_hub/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Apple',
    code: '123',
    description: 'Fresh apple',
    price: 2.5,
    reviews: [],
    expirationsMonths: 6,
    numberOfCalories: 100,
    unitAmount: 1,
    isOrganic: true,
    isFeatured: true,
    imageUrl: null,
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
