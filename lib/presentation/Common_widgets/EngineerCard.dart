import 'package:flutter/material.dart';

class EngineerCard extends StatelessWidget {
  final String label;
  final String imagePath;

  const EngineerCard({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Card box
        Container(
          width: screenWidth * 0.30,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  imagePath, // e.g. 'assets/engineer.png'
                  width: 50,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Label below card
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF212528),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
