import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_support_status_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          "Support",
          style: TextStyle(
            color: textColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding.w,
            vertical: 41.h,
          ),
          child: Column(
            children: [
              CustomSupportStatusCard(
                status: "In-progress",
                date: "12/17/2024",
                title: "Issue with Job Application Submission",
                description:
                    'I encountered a problem while trying to submit my job application for the position of "Marketing Specialist" at XYZ Company. After filling in all the required details and uploading my resume, I clicked the "Submit" button, but the page froze, and the application did not go through.',
              ),
              CustomButton(
                width: double.infinity,
                suffixIcon: Icon(Icons.add, color: primaryColor),
                textColor: Colors.white,
                backgroundColor: primaryColor,
                text: "Create New Ticket",
                onPressed: () {
                  //   _showCreateTicketDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateTicketDialog(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    Get.dialog(
      AlertDialog(
        title: Text('Create Support Ticket'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Issue Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Get.back(), child: Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isNotEmpty &&
                  descriptionController.text.isNotEmpty) {
                Get.back();
                Get.snackbar(
                  'Success',
                  'Support ticket created successfully',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              } else {
                Get.snackbar(
                  'Error',
                  'Please fill in all fields',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                );
              }
            },
            child: Text('Create Ticket'),
          ),
        ],
      ),
    );
  }
}
