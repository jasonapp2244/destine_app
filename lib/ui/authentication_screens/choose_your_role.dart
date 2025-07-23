import 'package:destine_app/constants/colors.dart';
import 'package:destine_app/constants/paddings.dart';
import 'package:destine_app/controllers/choose_your_role_controller.dart';
import 'package:destine_app/routes/routes.dart';
import 'package:destine_app/widgets/custom_button.dart';
import 'package:destine_app/widgets/custom_role_option_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseRoleScreen extends StatelessWidget {
  final _chooseRoleController = Get.find<ChooseYourRoleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 93.h),
            _buildTitleText(),
            SizedBox(height: 8.h),
            _buildSubtitleText(),
            SizedBox(height: 100.h),
            _buildRoleOptions(),
            Spacer(),
            _buildNextButton(),
            SizedBox(height: 20.h),
          ],
        ),
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

  /// Main heading text
  Widget _buildTitleText() {
    return Text(
      'Choose Your Role',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
      ),
    );
  }

  /// Subtitle text
  Widget _buildSubtitleText() {
    return Text(
      'We’ll customize your experience based on your selected path.',
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
    );
  }

  /// List of role option cards
  Widget _buildRoleOptions() {
    return Column(
      children: [
        Obx(
          () => CustomRoleOptionTileCard(
            roleName: 'Nursing Student',
            isSelected:
                _chooseRoleController.selectedRoleValue.value ==
                'Nursing Student',
            onTap: () {
              _chooseRoleController.selectedRoleValue.value = 'Nursing Student';
            },
            primaryColor: primaryColor,
            textColor: textColor,
          ),
        ),
        SizedBox(height: 12.h),
        Obx(
          () => CustomRoleOptionTileCard(
            roleName: 'Physician Assistant (PA) Student',
            isSelected:
                _chooseRoleController.selectedRoleValue.value ==
                'Physician Assistant (PA) Student',
            onTap: () {
              _chooseRoleController.selectedRoleValue.value =
                  'Physician Assistant (PA) Student';
            },
            primaryColor: primaryColor,
            textColor: textColor,
          ),
        ),
      ],
    );
  }

  /// Next button
  Widget _buildNextButton() {
    return CustomButton(
      width: double.infinity,
      text: 'Next',
      onPressed: () {
        Get.toNamed(AppRoutes.subscription);
      },
    );
  }
}
