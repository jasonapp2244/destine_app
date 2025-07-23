import 'package:flutter/material.dart';

class CustomNotificationCard extends StatelessWidget {
  final String text;
  final String userName;
  final String emoji;
  final IconData icon;
  final Color backgroundColor;
  final Color iconBackgroundColor;

  const CustomNotificationCard({
    super.key,
    this.text = '',
    required this.userName,
    this.emoji = '👋',
    this.icon = Icons.notifications_none,
    this.backgroundColor = const Color(0xFFF8F8F8),
    this.iconBackgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Welcome text section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              Text(
                '$userName! $emoji',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Icon section
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBackgroundColor,
            ),
            child: Icon(icon, size: 24, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
