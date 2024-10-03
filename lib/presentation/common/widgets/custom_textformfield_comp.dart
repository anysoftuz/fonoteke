import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldComp extends StatelessWidget {
  const CustomTextFieldComp({
    super.key,
    this.label,
    this.type,
    this.onTap,
    this.controller,
    this.readOnly = false,
    this.trailingIcon = false,
    this.onTapTrailingIcon,
    this.inputFormatters,
    this.initialValue,
  });

  final String? label;
  final TextInputType? type;
  final VoidCallback? onTap;
  final bool readOnly;
  final TextEditingController? controller;
  final bool trailingIcon;
  final VoidCallback? onTapTrailingIcon;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      keyboardType: type,
      // cursorColor: colors.customGreyC3,
      decoration: InputDecoration(
        suffixIcon: trailingIcon
            ? IconButton(
                onPressed: onTapTrailingIcon,
                icon: const Icon(Icons.search),
              )
            : null,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                // color: colors.customGreyC3,
                )),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                // color: colors.customGreyC3,
                )),
        border: const UnderlineInputBorder(
            borderSide: BorderSide(
                // color: colors.customGreyC3,
                )),
        label: Text(
          label ?? '',
          textAlign: TextAlign.center,
          // style: fonts.headline1
          //     .copyWith(color: colors.text.withOpacity(0.7), fontSize: 12),
        ),
      ),
    );
  }
}
