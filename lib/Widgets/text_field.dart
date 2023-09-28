import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final IconData icon;

  const TextFieldWidget({super.key,
    required this.title, required this.controller,
    required this.obscureText, required this.hintText, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                spreadRadius: 2,
              )]
            ),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.orangeAccent),
                ),
filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                prefixIcon: Icon(icon),
              ),

            ),
          ),
        ],
      );

  }
}
