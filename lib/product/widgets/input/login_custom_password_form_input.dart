import 'package:flutter/material.dart';

class LoginPasswordInputField extends TextFormField {
  LoginPasswordInputField(
      {Key? key,
      String? title,
      bool isSecure = true,
      Widget? suffixIcon,
      String? Function(String?)? validator,
      bool? filled,
      Color? filledColor,
      TextEditingController? controller,
      void Function(String?)? onSaved})
      : super(
          key: key,
          controller: controller,
          validator: validator,
          onSaved: onSaved,
          obscureText: isSecure,
          style:  TextStyle(color: Colors.grey.shade900),
          cursorColor: Colors.blue,
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
              labelText: "Şifre",
              fillColor: Colors.amber.shade200,
              filled: true,
              errorStyle: const TextStyle(color: Colors.red),
              labelStyle:  TextStyle(
                  color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:  BorderSide(color: Colors.grey.shade900),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:  BorderSide(color: Colors.grey.shade900),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:  BorderSide(color: Colors.grey.shade900),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:  BorderSide(color: Colors.grey.shade900),
              )),
        );
}