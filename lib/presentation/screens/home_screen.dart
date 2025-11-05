import 'package:first_choices/presentation/Common_widgets/category_list.dart';
import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';
import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body:SafeArea(child: 
      Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

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
              
              const CategoryList(categories: _categories),



        ],
      ),
      
      )
      )
    );
  }
   static const List<String> _categories = [
    "Home",
    "Education",
    "Lifestyle",
    "Caretaker",
    // add more if you want to test scrolling more
    "Health",
    "Fitness",
    "Beauty",
  ];
}


