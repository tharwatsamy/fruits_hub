import '../../../../core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          activeImage: Assets.imagesVuesaxBoldHome,
          inActiveImage: Assets.imagesVuesaxOutlineHome,
          name: 'الرئيسية'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesVuesaxBoldProducts,
          inActiveImage: Assets.imagesVuesaxOutlineProducts,
          name: 'المنتجات'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesVuesaxBoldShoppingCart,
          inActiveImage: Assets.imagesVuesaxOutlineShoppingCart,
          name: 'سلة التسوق'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesVuesaxBoldUser,
          inActiveImage: Assets.imagesVuesaxOutlineUser,
          name: 'حسابي'),
    ];
