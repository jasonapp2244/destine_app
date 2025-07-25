import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CustomRadio({super.key, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 17,
        height: 17,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? primaryColor : Colors.transparent,
          border: Border.all(color: primaryColor, width: 2),
        ),
        child: Center(
          child: Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.white, // Inner hole
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
