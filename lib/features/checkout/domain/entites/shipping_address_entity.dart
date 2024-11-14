class ShippingAddressEntity {
  final String name;
  final String phone;
  final String address;
  final String city;
  final String email;
  final String addressDetails;

  ShippingAddressEntity(
      {required this.name,
      required this.phone,
      required this.address,
      required this.city,
      required this.email,
      required this.addressDetails});
}
