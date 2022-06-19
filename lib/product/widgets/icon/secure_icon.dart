import 'package:flutter/material.dart';

class SecureIcon extends Icon {
   const SecureIcon({Key? key, required bool isSecure})
      : super(key: key, isSecure ? Icons.visibility : Icons.visibility_off);
}