import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CustomRadio({Key? key, required this.isSelected, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 17,
        height: 17,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Color(0xff7E7EFF) : Colors.transparent,
          border: Border.all(color: Color(0xff7E7EFF), width: 2),
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
