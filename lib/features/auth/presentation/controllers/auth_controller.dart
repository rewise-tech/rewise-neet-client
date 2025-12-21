import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/common/utils/error_utils.dart';
import 'package:rewise_neet/features/auth/application/auth_service_impl.dart';
import 'package:rewise_neet/features/auth/presentation/state/auth_state.dart';

final authControlProvider = NotifierProvider<AuthController, AuthState>(
  AuthController.new,
);

class AuthController extends Notifier<AuthState> {
  @override
  AuthState build() {
    return const AuthState(status: AuthStatus.initial);
  }

  Future<void> loginWithGoogle() async {
    try {
      // Set loading state
      state = state.copyWith(status: AuthStatus.loading, errorMessage: null);

      // Sign in with Google
      final user = await ref.read(authServiceProvider).signInWithGoogle();

      // Update state to authenticated
      state = AuthState(
        status: AuthStatus.authenticated,
        userId: user.uid,
        email: user.email,
        displayName: user.name,
      );
    } catch (e) {
      String message = trimErrorMsg(e as Exception);
      state = state.copyWith(
        status: AuthStatus.unauthenticated,
        errorMessage: message,
      );
    }
  }

  Future<void> logout() async {
    try {
      await ref.read(authServiceProvider).signOut();
      state = const AuthState(status: AuthStatus.unauthenticated);
    } catch (e) {
      String message = trimErrorMsg(e as Exception);
      state = state.copyWith(
        status: AuthStatus.unauthenticated,
        errorMessage: message,
      );
    }
  }
}
