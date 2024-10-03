// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:flutter_svg/svg.dart';

// class CustomTextFieldWithIcon extends StatelessWidget {
//   final TextEditingController controller;
//   final String icons;
//   final Function(String) onChanged;
//   final Function()? onTap;

//   final String? hintText;
//   final TextInputType keyboardType;
//   final List<TextInputFormatter>? inputFormatters;
//   final FormFieldValidator<String>? validator;
//   final bool readOnly;
//   final bool hasSuffixIcon;
//   final bool autoFocus;

//   const CustomTextFieldWithIcon({
//     super.key,
//     this.keyboardType = TextInputType.phone,
//     required this.controller,
//     required this.onChanged,
//     required this.icons,
//     this.inputFormatters,
//     this.hintText,
//     this.validator,
//     this.readOnly = false,
//     this.hasSuffixIcon = false,
//     this.autoFocus = false,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onTap: onTap,
//       autofocus: autoFocus,
//       keyboardType: keyboardType,
//       onChanged: onChanged,
//       controller: controller,
//       inputFormatters: inputFormatters,
//       validator: validator,
//       readOnly: readOnly,
//       style: Style.medium14(size: 16, color: colors.text),
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: Style.medium14().copyWith(
//             fontSize: 16, color: colors.customBlack.withOpacity(0.5)),
//         prefixIcon: SizedBox(
//           width: 60,
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 15,
//               ),
//               SvgPicture.asset(
//                 icons,
//                 width: 20,
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 22,
//                 child: VerticalDivider(
//                   color: colors.customGreyC3,
//                   thickness: 1,
//                   width: 22,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         suffixIcon: hasSuffixIcon
//             ? Padding(
//                 padding: const EdgeInsets.all(14),
//                 child: icon.down.svg(
//                   color: colors.customGreyC3,
//                 ),
//               )
//             : null,
//         filled: true,
//         fillColor: colors.white,
//         focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: colors.customGreyC3, width: 1),
//             borderRadius: BorderRadius.all(Radius.circular(8))),
//         enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: colors.customGreyC3, width: 1),
//             borderRadius: BorderRadius.all(Radius.circular(8))),
//         contentPadding: EdgeInsets.all(15),
//       ),
//     );
//   }
// }
