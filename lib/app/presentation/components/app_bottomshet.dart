// import 'dart:ui';

// import 'package:communication_client/app/utils/constants/app_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// class AppBottomSheet {
//   // Use: AppBottomSheet.showButtomSheet(context, Text('Some widget'));
//   // isWrapContent - height by content size
//   // heightOffset - offset height from the top
//   static Future showButtomSheet({
//     required BuildContext context,
//     required bool isExpanded,
//     bool isWrapContent = true,
//     double indentationFromTop = 0.0,
//     bool isBlurBackground = false,
//     Color colorButtomSheet = ColorApp.backgroundBottomSheet,
//     Widget? child,
//     bool enableDrag = true,
//   }) =>
//       showMaterialModalBottomSheet(
//         context: context,
//         elevation: 2,
//         expand: isExpanded,
//         backgroundColor: Colors.transparent,
//         isDismissible: true,
//         enableDrag: enableDrag,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(28.0),
//         ),
//         builder: (BuildContext context) => BackdropFilter(
//           filter: isBlurBackground
//               ? ImageFilter.blur(sigmaX: 2, sigmaY: 2)
//               : ImageFilter.blur(sigmaX: 0, sigmaY: 0),
//           child: FractionallySizedBox(
//             child: SingleChildScrollView(
//               child: Transform.translate(
//                 offset: const Offset(0.0, -2.0),
//                 child: Container(
//                   padding: const EdgeInsets.only(top: 00),
//                   width: MediaQuery.of(context).size.width,
//                   height: isWrapContent
//                       ? null
//                       : MediaQuery.of(context).size.height - indentationFromTop,
//                   decoration: BoxDecoration(
//                     color: colorButtomSheet,
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(28),
//                       topRight: Radius.circular(28),
//                     ),
//                   ),
//                   child: child,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
// }
