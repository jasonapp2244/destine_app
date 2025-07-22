import 'package:destine_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  _ChooseRoleScreenState createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  String selectedRole = 'Nursing Student';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffF5F5F5),

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 93.h),
            Text(
              'Choose Your Role',
              style: TextStyle(
                color: Color(0xff0F1011),
                fontWeight: FontWeight.w600,
                fontSize: 28.sp, // scaled font size
              ),
            ),
            SizedBox(height: 8),
            Text(
              'We’ll customize your experience based on your selected path.',
              style: TextStyle(
                color: Color(0xff0F1011),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 100),

            // Role options
            _roleOption('Nursing Student'),
            SizedBox(height: 12),
            _roleOption('Physician Assistant (PA) Student'),

            Spacer(),

            // Next button
            CustomButton(text: 'Next', onPressed: () {}),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _roleOption(String roleName) {
    bool isSelected = selectedRole == roleName;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRole = roleName;
        });
      },
      child: Container(
        height: 46,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected ? Color(0xFF8C8AF8) : Colors.transparent,
            width: 2,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Color(0x668C8AF8),
                    blurRadius: 8,
                    offset: Offset(0, 2),
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
                color: Colors.black,
              ),
            ),
            if (isSelected)
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color(0xFF8C8AF8),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(4),
                child: Icon(Icons.check, size: 12, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
