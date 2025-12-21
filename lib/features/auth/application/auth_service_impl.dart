import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/features/auth/application/auth_service.dart';
import 'package:rewise_neet/features/auth/data/repositories/auth_repository.dart';
import 'package:rewise_neet/common/models/app_user.dart';
import 'package:rewise_neet/features/auth/data/repositories/auth_repository_impl.dart';

final authServiceProvider = Provider.autoDispose<AuthService>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthServiceImpl(authRepository);
});

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl(this._authRepository);

  @override
  Future<AppUser> signInWithGoogle() {
    return _authRepository.signInWithGoogle();
  }

  @override
  Future<void> deleteAccount() {
    return _authRepository.deleteAccount();
  }

  @override
  Future<void> signOut() {
    return _authRepository.signOut();
  }
}
