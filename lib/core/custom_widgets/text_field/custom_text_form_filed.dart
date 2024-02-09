import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsets? margin;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function()? onTapVisibility;
  const CustomTextFormField({
    super.key,
    this.margin,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    this.controller,
    this.onTapVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          focusedBorder: _inputBorder(const Color.fromRGBO(51, 102, 255, 1)),
          enabledBorder: _inputBorder(Colors.grey),
          focusedErrorBorder: _inputBorder(Colors.red),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          constraints: const BoxConstraints(minHeight: 56),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromRGBO(156, 163, 175, 1)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: prefixIcon,
          ),
          suffixIcon: SizedBox(
              width: 20,
              height: 20,
              child: InkWell(
                onTap: onTapVisibility,
                child: suffixIcon,
              )),
          suffixIconColor: Colors.grey,
        ),
      ),
    );
  }

  OutlineInputBorder _inputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
