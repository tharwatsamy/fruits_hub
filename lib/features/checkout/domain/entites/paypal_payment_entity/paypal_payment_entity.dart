import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntity(PaypalPaymentEntity entity) {
    return PaypalPaymentEntity(
      amount: entity.amount,
      description: entity.description,
      itemList: entity.itemList,
    );
  }
}
