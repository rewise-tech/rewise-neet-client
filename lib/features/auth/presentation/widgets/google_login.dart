import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/features/auth/presentation/controllers/auth_controller.dart';
import 'package:rewise_neet/features/auth/presentation/state/auth_state.dart';
import '../../../../../app/routes/route_name.dart';

class GoogleLogin extends ConsumerStatefulWidget {
  //
  const GoogleLogin({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GoogleLoginState();
}

class _GoogleLoginState extends ConsumerState<GoogleLogin> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    _listener();
    //
    final authState = ref.watch(authControlProvider);
    final isLoading = authState.isLoading;

    return OutlinedButton.icon(
      onPressed: isLoading ? null : () => _handleGoogleSignIn(context, ref),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      icon: isLoading
          ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Image.asset(
              'assets/images/google_logo.png',
              height: 24,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.g_mobiledata, size: 24);
              },
            ),
      label: isLoading
          ? const Text('Signing in...')
          : const Text('Continue with Google'),
    );
  }

  Future<void> _handleGoogleSignIn(BuildContext context, WidgetRef ref) async {
    //
    await ref.read(authControlProvider.notifier).loginWithGoogle();
  }

  void _listener() {
    // listen for error
    ref.listen(authControlProvider.select((value) => value.errorMessage), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.red,
            content: Text(next),
          ),
        );
      }
    });

    // listen for authenticated status
    ref.listen(authControlProvider.select((value) => value.status), (_, next) {
      if (next == AuthStatus.authenticated) {
        context.go('/$homeRoute');
      }
    });
  }
}
