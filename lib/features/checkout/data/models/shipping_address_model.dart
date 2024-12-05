import '../../domain/entites/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name;
  String? phone;
  String? address;
  String? city;
  String? email;
  String? floor;

  ShippingAddressModel({
    this.name,
    this.phone,
    this.address,
    this.floor,
    this.city,
    this.email,
  });
  factory ShippingAddressModel.fromEntity(ShippingAddressEntity entity) {
    return ShippingAddressModel(
      name: entity.name,
      phone: entity.phone,
      address: entity.address,
      floor: entity.floor,
      city: entity.city,
      email: entity.email,
    );
  }
  @override
  String toString() {
    return '$address $floor $city';
  }

  toJson() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'floor': floor,
      'city': city,
      'email': email,
    };
  }
}
