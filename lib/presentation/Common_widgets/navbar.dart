import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/bottom_nav_provider.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavProvider);

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF212528),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(ref, Icons.grid_view_rounded, 0),
          _buildNavItem(ref, Icons.event_note_rounded, 1),
          _buildNavItem(ref, Icons.settings_rounded, 2),
        ],
      ),
    );
  }

  Widget _buildNavItem(WidgetRef ref, IconData icon, int index) {
    final selectedIndex = ref.watch(bottomNavProvider);
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        ref.read(bottomNavProvider.notifier).state = index;
      },
      child: isSelected
          ? CircleAvatar(
              radius: 26,
              backgroundColor: Colors.white,
              child: Icon(icon, color: const Color(0xFF212528)),
            )
          : Icon(icon, color: Colors.white, size: 28),
    );
  }
}
