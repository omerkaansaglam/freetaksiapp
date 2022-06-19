import 'package:flutter/material.dart';

class CustomElevationButton extends StatefulWidget {
  final Future<void> Function() onPressed;
  final Widget? title;
  final bool isCircle;
  final Color? primaryColor;
  const CustomElevationButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.isCircle = false,
      this.primaryColor})
      : super(key: key);

  @override
  _CustomElevationButtonState createState() => _CustomElevationButtonState();
}

class _CustomElevationButtonState extends State<CustomElevationButton> {

  Future<void> _completeProcess() async {
    await widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _completeProcess,
      style: ElevatedButton.styleFrom(
          primary: Colors.amber.shade100,
          shape: widget.isCircle ? const CircleBorder() : null),
      child: widget.title,
    );
  }
}