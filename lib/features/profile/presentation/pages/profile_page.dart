import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/features/auth/presentation/controllers/auth_controller.dart';
import '../../../../app/routes/route_name.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    //
    final authState = ref.watch(authControlProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          // Header with Avatar and User Info
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
            decoration: BoxDecoration(color: colorScheme.primaryContainer),
            child: Column(
              children: [
                // Avatar
                CircleAvatar(
                  radius: 50,
                  backgroundColor: colorScheme.primary,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 16),
                // User Name
                Text(
                  authState.displayName ?? 'User',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(height: 4),
                // Email
                Text(
                  authState.email ?? 'user@example.com',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onPrimaryContainer.withValues(
                      alpha: 0.7,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Menu Items
          _buildMenuItem(
            context,
            icon: Icons.account_circle_outlined,
            title: 'My Account',
            onTap: () {
              context.go('/$myAccountRoute');
            },
          ),
          _buildMenuItem(
            context,
            icon: Icons.settings_outlined,
            title: 'Settings',
            onTap: () {
              // TODO: Navigate to Settings
            },
          ),
          _buildMenuItem(
            context,
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            onTap: () {
              // TODO: Navigate to Notifications
            },
          ),
          _buildMenuItem(
            context,
            icon: Icons.help_outline,
            title: 'Help Center',
            onTap: () {
              // TODO: Navigate to Help Center
            },
          ),
          _buildMenuItem(
            context,
            icon: Icons.logout,
            title: 'Logout',
            onTap: () async {
              await ref.read(authControlProvider.notifier).logout();
              if (context.mounted) {
                context.go('/$loginRoute');
              }
            },
            isDestructive: true,
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isDestructive ? colorScheme.error : colorScheme.primary,
        ),
        title: Text(
          title,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: isDestructive ? colorScheme.error : colorScheme.onSurface,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: colorScheme.onSurfaceVariant,
        ),
        onTap: onTap,
      ),
    );
  }
}
