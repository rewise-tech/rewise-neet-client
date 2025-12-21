import 'package:rewise_neet/common/models/app_user.dart';

abstract class AuthService {
  Future<AppUser> signInWithGoogle();

  Future<void> deleteAccount();

  Future<void> signOut();
}
