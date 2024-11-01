import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600),
        color: Color(0XFF121212),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          obscureText: tohide,
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
            labelText: text,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade700),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({
    required String imgUrl,
  }) {
    return Image.asset(
      "assets/images/$imgUrl",
    );
  }

  static Widget CustomTextButton(
      {required String? text, required VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap, // Handle the button press
      child: Container(
        height: 50,
        width: 343,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0XFF3797EF),
        ),
        alignment: Alignment.center,
        child: Text(
          text ?? '',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
