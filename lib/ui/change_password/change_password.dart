import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:jhon/res/colors/app_color.dart';
// import 'package:jhon/res/components/round_button.dart';
// import 'package:jhon/res/components/text.dart';

// class ChangePasswordView extends StatelessWidget {
//   // TextEditingController oldpassword = TextEditingController();
//   // TextEditingController newPassword = TextEditingController();
//   // TextEditingController confirmPassword = TextEditingController();
//   ChangePasswordView({
//     super.key,
//     // required this.oldpassword,

//     // required this.newPassword,
//     // required this.confirmPassword,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.primeColorb,
//       appBar: AppBar(
//         backgroundColor: AppColor.primeColorb,
//         title: Textwidegt(
//           text: "Change Password",
//           color: AppColor.blackColor,
//           fontsize: 22,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: Column(
//           spacing: 10,
//           children: [
//             // TextFormField(
//             //   // controller: oldpassword,
//             //   cursorColor: AppColor.primeColor,

//             //   decoration: InputDecoration(
//             //     iconColor: AppColor.blackColor,
//             //     hoverColor: AppColor.primeColorb,

//             //     fillColor: AppColor.primeColorb,
//             //     prefixIcon: Icon(Icons.add_ic_call_outlined),
//             //     label: Text("Old Password"),
//             //     focusColor: AppColor.primeColor,

//             //     enabledBorder: OutlineInputBorder(
//             //       borderSide: BorderSide(color: AppColor.primeColor),
//             //     ),
//             //   ),
//             // ),
//             SizedBox(height: 10),
//             TextFormField(
//               cursorColor: AppColor.primeColor,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 prefix: SvgPicture.asset('assets/icons/lock-password.svg'),
//                 label: Text("Old Password"),
//                 labelStyle: TextStyle(color: AppColor.primeColor),
//                 // Makes the border circular
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(
//                     30.0,
//                   ), // Adjust for more/less rounding
//                 ),
//                 // Enabled (not focused) border
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(
//                     color: AppColor.whiteColor,
//                     width: 2.0, // Thicker border
//                   ),
//                 ),
//                 // Focused border
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(
//                     color: AppColor.whiteColor,
//                     width: 2.0, // Thicker border when focused
//                   ),
//                 ),
//                 // You can also customize other states
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.red, width: 2.0),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.red, width: 2.0),
//                 ),
//               ),
//             ),
//             TextFormField(
//               cursorColor: AppColor.primeColor,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 prefix: SvgPicture.asset(
//                   "assets/icons/lock-password.svg",
//                   fit: BoxFit.cover,
//                 ),
//                 label: Text("New Password"),
//                 labelStyle: TextStyle(color: AppColor.primeColor),
//                 // Makes the border circular
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(
//                     30.0,
//                   ), // Adjust for more/less rounding
//                 ),
//                 // Enabled (not focused) border
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(
//                     color: AppColor.whiteColor,
//                     width: 2.0, // Thicker border
//                   ),
//                 ),
//                 // Focused border
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(
//                     color: AppColor.whiteColor,
//                     width: 2.0, // Thicker border when focused
//                   ),
//                 ),
//                 // You can also customize other states
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.red, width: 2.0),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.red, width: 2.0),
//                 ),
//               ),
//             ),
//             TextFormField(
//               cursorColor: AppColor.primeColor,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 prefix: SvgPicture.asset(
//                   "assets/icons/lock-password.svg",
//                   fit: BoxFit.cover,
//                 ),
//                 label: Text("Confirm Password"),
//                 labelStyle: TextStyle(color: AppColor.primeColor),
//                 // Makes the border circular
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(
//                     30.0,
//                   ), // Adjust for more/less rounding
//                 ),
//                 // Enabled (not focused) border
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(
//                     color: AppColor.whiteColor,
//                     width: 2.0, // Thicker border
//                   ),
//                 ),
//                 // Focused border
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(
//                     color: AppColor.whiteColor,
//                     width: 2.0, // Thicker border when focused
//                   ),
//                 ),
//                 // You can also customize other states
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.red, width: 2.0),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.red, width: 2.0),
//                 ),
//               ),
//             ),
//             RoundButton(
//               title: "Confirm",
//               onPress: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }