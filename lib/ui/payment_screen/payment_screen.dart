import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          "Payment Method",
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
              PaymentHistory(),

              CustomButton(
                width: double.infinity,
                suffixIcon: Icon(Icons.add, color: primaryColor),
                textColor: primaryColor,
                backgroundColor: primaryColor.withValues(alpha: 0.1),
                text: "Add New",
                onPressed: () {
                  _showAddCardBottomSheet(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showAddCardBottomSheet(BuildContext context) {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardNameController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Drag indicator
                Center(
                  child: Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Title
                Text(
                  "Add Card",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // Card Number Field
                CustomTextField(
                  controller: cardNumberController,
                  iconPath: 'assets/icons/logos_mastercard.svg',
                  hintText: 'Card Number',
                ),

                SizedBox(height: 15),

                // Cardholder Name Field
                // Card Number Field
                CustomTextField(
                  hintText: 'Card Number',
                  controller: cardNumberController,
                ),

                SizedBox(height: 15),

                // Expiry Date and CVV Row
                Row(
                  children: [
                    // Expiry Date
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Expire on',
                        controller: expiryController,
                      ),
                    ),
                    SizedBox(width: 15),

                    // CVV
                    Expanded(child: CustomTextField(hintText: 'CVV')),
                  ],
                ),
                SizedBox(height: 30),

                // Add Card Button
                Container(
                  width: double.infinity,
                  child: CustomButton(
                    backgroundColor: primaryColor,
                    textColor: Colors.white,
                    text: "Save",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process card data
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Card added successfully")),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 20), // Bottom padding for safe area
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5.w, vertical: 2.h),

      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
            margin: EdgeInsets.symmetric(vertical: 3.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/icons/logos_mastercard.svg',
                    width: 25.w,
                    height: 25.h,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mastercard",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "xxx-xxx-xxx-8974",
                          style: TextStyle(
                            color: Color(0xff0F1011),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset('assets/icons/delete.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
