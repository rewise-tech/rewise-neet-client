import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/common/models/app_user.dart';
import 'package:rewise_neet/features/auth/data/datasources/remote/firebase_auth_api.dart';
import 'package:rewise_neet/features/auth/data/repositories/auth_repository.dart';

final authRepositoryProvider = Provider.autoDispose<AuthRepository>((ref) {
  final firebaseAuthApi = ref.watch(firebaseAuthProvider);
  return AuthRepositoryImpl(firebaseAuthApi);
});

final class AuthRepositoryImpl implements AuthRepository {
  //
  final FirebaseAuthApi _firebaseAuthProvider;

  AuthRepositoryImpl(this._firebaseAuthProvider);

  @override
  Future<AppUser> signInWithGoogle() {
    return _firebaseAuthProvider.signInWithGoogle();
  }

  @override
  Future<void> deleteAccount() {
    return _firebaseAuthProvider.deleteAccount();
  }

  @override
  Future<void> signOut() {
    return _firebaseAuthProvider.signOut();
  }
}
