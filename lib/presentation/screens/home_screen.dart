import 'package:first_choices/presentation/Common_widgets/EngineerCard.dart';
import 'package:first_choices/presentation/screens/PlumberCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/app_colors.dart';
import '../../presentation/Common_widgets/navbar.dart';
import '../../presentation/Common_widgets/category_list.dart';
import '../../../providers/bottom_nav_provider.dart';
import 'events_screen.dart';
import 'settings_screen.dart';



class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const List<String> _categories = [
    "Home",
    "Education",
    "Lifestyle",
    "Caretaker",
    "Health",
    "Fitness",
    "Beauty",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavProvider);

    // Define the 3 main tabs (screens)
    final screens = [
      _buildHomeContent(), // Main Home tab
      const EventScreen(), // Second tab
      const SettingsScreen(), // Third tab
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'All The Help You Need, Today',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),

      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, anim) =>
              FadeTransition(opacity: anim, child: child),
          child: screens[currentIndex],
        ),
      ),

      bottomNavigationBar: const BottomNavBar(),
    );
  }

  // 👇 This builds your home tab content
  static Widget _buildHomeContent() {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔍 Search Box
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search for any service...",
                  hintStyle: TextStyle(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
      
            const SizedBox(height: 20),
      
            // 🏷 Category List
            const CategoryList(categories: _categories),
      
            //sized box
             const SizedBox(height: 20),
      
            // 👨‍🔧 Service Cards Row
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PlumberCard(),
                    PlumberCard(),
                  ],
                ),
      
            const SizedBox(height: 20),
      
                 // 👨‍🔧 Services scrolable Cards Row
      
      
                SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        // SizedBox(width: 16), // left padding
      
        EngineerCard(
          label: "Civil ",
          imagePath: "assets/image.png",
        ),
        SizedBox(width: 16),
      
        EngineerCard(
          label: "Mechanical ",
          imagePath: "assets/image.png",
        ),
        SizedBox(width: 16),
      
        EngineerCard(
          label: "Electrical ",
          imagePath: "assets/image.png",
        ),
        SizedBox(width: 16), // right padding
      ],
        ),
      )
      
      
         ,Column(
         // ensures left alignment
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      const SizedBox(height: 20),
      const Text(
        "How It Works ?",
        textAlign: TextAlign.start, // correct placement
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      
      Container(
  width: double.infinity,
  height: 400,
  margin: const EdgeInsets.only(top: 10),
  decoration: BoxDecoration(
    color: AppColors.secondary, // ✅ color goes inside decoration
    borderRadius: BorderRadius.circular(16), // ✅ rounded corners
  ),
)

        ],
      )
         
                 
          ],
        ),
      ),
    );
  }
}
