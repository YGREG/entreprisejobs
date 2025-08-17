import '../../core/services/firebase_service.dart';
import '../../core/models/user_model.dart';

class UserRepository {
  final FirebaseService firebaseService;

  UserRepository({required this.firebaseService});

  Future<UserModel?> fetchUser(String userId) async {
    final data = await firebaseService.getUserData(userId);
    return data != null ? UserModel.fromJson(data) : null;
  }
}