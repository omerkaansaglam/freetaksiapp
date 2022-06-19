import 'package:flutter/material.dart';
import 'package:freetaksiapp/product/widgets/icon/secure_icon.dart';
import 'package:freetaksiapp/product/widgets/input/login_custom_password_form_input.dart';

class LoginPasswordCustomField extends StatefulWidget {
  final String? title;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  const LoginPasswordCustomField(
      {Key? key, this.title, this.controller, this.onSaved})
      : super(key: key);

  @override
  _LoginPasswordCustomFieldState createState() =>
      _LoginPasswordCustomFieldState();
}

class _LoginPasswordCustomFieldState extends State<LoginPasswordCustomField> {
  bool _isSecureText = true;
  void _changeSecure() {
    setState(() {
      _isSecureText = !_isSecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoginPasswordInputField(
      isSecure: _isSecureText,
      title: widget.title,
      controller: widget.controller,
      onSaved: widget.onSaved,
      suffixIcon: IconButton(
          onPressed: () {
            _changeSecure();
          },
          icon: SecureIcon(
            isSecure: _isSecureText,
          )),
    );
  }
}
