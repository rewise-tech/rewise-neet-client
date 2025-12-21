import 'package:rewise_neet/common/models/app_user.dart';

abstract interface class AuthRepository {
  Future<AppUser> signInWithGoogle();

  Future<void> deleteAccount();

  Future<void> signOut();
}
