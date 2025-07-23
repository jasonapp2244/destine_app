import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/widgets/custom_pricing_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      backgroundColor: secondaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 93.h),
            _buildTitleText(),
            SizedBox(height: 30.h),

            CustomPricingCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText() {
    return Text(
      'Subscription',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
      ),
    );
  }

  /// AppBar with back button
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: secondaryColor,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: textColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
