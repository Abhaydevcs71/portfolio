import 'package:flutter/material.dart';

class ShortTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintTextName;
  const ShortTextFieldWidget(
      {super.key, required this.controller, required this.hintTextName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintTextName,
          border: const OutlineInputBorder(), // Makes it look like a box
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16), // Optional: Adds padding inside the box
        ),
      ),
    );
  }
}
