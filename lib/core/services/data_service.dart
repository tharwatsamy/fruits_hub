import '../../features/auth/domain/entites/user_entity.dart';

abstract class DatabaseService {
  Future<void> addData(
      {required String path, required Map<String, dynamic> data});
  Future<UserEntity> getUserData({required String path , required String uid});
}
