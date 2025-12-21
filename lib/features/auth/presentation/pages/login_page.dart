import 'package:flutter/material.dart';
import '../widgets/google_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Logo/Icon
                Icon(
                  Icons.swap_horiz_rounded,
                  size: 80,
                  color: colorScheme.primary,
                ),
                const SizedBox(height: 16),

                // App Name
                Text(
                  'Rewise xChange',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 8),

                Text(
                  'Welcome back!',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 24),

                // Google Sign-In Button
                const GoogleLogin(),
                const SizedBox(height: 24),

                // Divider
                // Row(
                //   children: [
                //     Expanded(child: Divider(color: colorScheme.outline)),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 16),
                //       child: Text(
                //         'OR',
                //         style: theme.textTheme.bodySmall?.copyWith(
                //           color: colorScheme.onSurfaceVariant,
                //         ),
                //       ),
                //     ),
                //     Expanded(child: Divider(color: colorScheme.outline)),
                //   ],
                // ),
                // const SizedBox(height: 24),

                // Email/Password Login Form
                //const LoginForm(),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
