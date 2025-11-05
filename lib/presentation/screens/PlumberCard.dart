import 'package:first_choices/core/app_assets.dart';
import 'package:flutter/material.dart';

class PlumberCard extends StatelessWidget {
  const PlumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: screenWidth * 0.43, // responsive width
        height: 150, // ⬅️ reduced height for better proportion
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Stack(
            children: [
              // Character image on the right
              Positioned(
                right: 0,
                bottom: 20,
                child: Image.asset(
                   AppAssets.logo,
                  width: screenWidth * 0.14,
                  fit: BoxFit.contain,
                ),
              ),

              // Content on the left
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  // Service feature list
                  _buildFeature(Icons.verified, Colors.green, "Verified"),
                  const SizedBox(height: 5),
                  _buildFeature(Icons.alarm, Colors.redAccent, "On-Time"),
                  const SizedBox(height: 5),
                  _buildFeature(Icons.attach_money, Colors.black87, "Affordable"),

                  const Spacer(),

                  // Title at bottom
                  const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Plumber',
                      style: TextStyle(
                        fontFamily: 'Hanken Grotesk',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeature(IconData icon, Color color, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 16), // smaller, balanced icons
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12, // slightly larger for readability
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
