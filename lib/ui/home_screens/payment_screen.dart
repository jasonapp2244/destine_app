import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:jhon/res/colors/app_color.dart';
// import 'package:jhon/res/components/round_button.dart';
// import 'package:jhon/res/components/text.dart';
// import 'package:jhon/utils/responsive.dart';

// class PaymentMethod extends StatelessWidget {
//   const PaymentMethod({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final adaptive = Responsive.of(context);

//     return Scaffold(
//       backgroundColor: AppColor.primeColorb,
//       appBar: AppBar(
//         backgroundColor: AppColor.primeColorb,
//         title: Textwidegt(
//           text: "Payment History",
//           color: AppColor.blackColor,
//           fontsize: adaptive.fontSize(22),
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: Column(
//             children: [
//               PaymentHistory(),
//               RoundButton(
//                 title: "Add New",
//                 onPress: () {
//                   _showAddCardBottomSheet(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void _showAddCardBottomSheet(BuildContext context) {
//   final adaptive = Responsive.of(context);
//   final TextEditingController cardNumberController = TextEditingController();
//   final TextEditingController cardNameController = TextEditingController();
//   final TextEditingController expiryController = TextEditingController();
//   final TextEditingController cvvController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//     builder:
//         (context) => Container(
//           height: adaptive.height(65),
//           decoration: BoxDecoration(
//             color: AppColor.whiteColor,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
//           ),
//           padding: EdgeInsets.all(20),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Container(
//                     width: 40,
//                     height: 5,
//                     decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   "Add New Card",
//                   style: TextStyle(
//                     fontSize: adaptive.fontSize(22),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),

//                 // Card Number Field
//                 TextFormField(
//                   controller: cardNumberController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: "Card Number",
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.all(12),
//                       child: SvgPicture.asset(
//                         'assets/icons/logos_mastercard (1).svg',
//                         width: 24,
//                       ),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: AppColor.primeColor),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: AppColor.primeColor),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter card number';
//                     }
//                     if (value.length < 16) {
//                       return 'Invalid card number';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 15),

//                 // Cardholder Name Field
//                 TextFormField(
//                   controller: cardNameController,
//                   decoration: InputDecoration(
//                     labelText: "Cardholder Name",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: AppColor.primeColor),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: AppColor.primeColor),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter name';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 15),

//                 // Expiry Date and CVV Row
//                 Row(
//                   children: [
//                     // Expiry Date
//                     Expanded(
//                       child: TextFormField(
//                         controller: expiryController,
//                         keyboardType: TextInputType.datetime,
//                         decoration: InputDecoration(
//                           labelText: "MM/YY",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: AppColor.primeColor),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: AppColor.primeColor),
//                           ),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Enter expiry';
//                           }
//                           if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) {
//                             return 'MM/YY format';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     SizedBox(width: 15),

//                     // CVV
//                     Expanded(
//                       child: TextFormField(
//                         controller: cvvController,
//                         keyboardType: TextInputType.number,
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           labelText: "CVV",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: AppColor.primeColor),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: AppColor.primeColor),
//                           ),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Enter CVV';
//                           }
//                           if (value.length < 3) {
//                             return 'Invalid CVV';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ],
//                 ),

//                 Spacer(),

//                 // Add Card Button
//                 RoundButton(
//                   title: "Add Card",
//                   onPress: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Process card data
//                       Navigator.pop(context);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text("Card added successfully")),
//                       );
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//   );
// }

// class PaymentHistory extends StatelessWidget {
//   const PaymentHistory({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final adaptive = Responsive.of(context);

//     return Padding(
//       padding: adaptive.paddingSymmetric(horizontal: 5, vertical: 2),
//       child: Column(
//         children: [
//           Container(
//             width: adaptive.width(90),
//             padding: adaptive.paddingAll(3),
//             margin: adaptive.paddingOnly(bottom: 2),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(adaptive.width(4)),
//               color: AppColor.whiteColor,
//             ),
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: adaptive.width(15),
//                   child: SvgPicture.asset(
//                     'assets/icons/mastercard.svg',
//                     width: adaptive.width(10),
//                     height: adaptive.width(10),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: adaptive.paddingSymmetric(horizontal: 3),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Textwidegt(
//                           text: "Mastercard",
//                           color: AppColor.blackColor,
//                           fontsize: adaptive.fontSize(16),
//                           fontWeight: FontWeight.bold,
//                         ),
//                         adaptive.verticalSpace(1),
//                         Textwidegt(
//                           text: "xxx-xxx-xxx-8765",
//                           color: Colors.grey,
//                           fontsize: adaptive.fontSize(12),
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SvgPicture.asset(
//                   'assets/icons/Frame 1410121039.svg',
//                   width: adaptive.width(10),
//                   height: adaptive.width(10),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }