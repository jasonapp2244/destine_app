import 'package:flutter/material.dart';

class CustomRoleOptionTileCard extends StatelessWidget {
  final String roleName;
  final bool isSelected;
  final VoidCallback onTap;
  final Color primaryColor;
  final Color textColor;

  const CustomRoleOptionTileCard({
    Key? key,
    required this.roleName,
    required this.isSelected,
    required this.onTap,
    required this.primaryColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected ? primaryColor : Colors.transparent,
            width: 2,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              roleName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: textColor,
              ),
            ),
            if (isSelected)
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(4),
                child: const Icon(Icons.check, size: 12, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
