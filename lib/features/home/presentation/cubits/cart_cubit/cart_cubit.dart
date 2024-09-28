import 'package:bloc/bloc.dart';
import 'package:fruits_hub/features/home/domain/entites/car_item_entity.dart';
import 'package:fruits_hub/features/home/domain/entites/cart_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity([]);
  void addCartItem(CarItemEntity cartItemEntity) {
    cartEntity.addCartItem(cartItemEntity);
    emit(CartItemAdded());
  }
}
