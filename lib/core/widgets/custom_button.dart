import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, required this.text, this.isLoading = false});

  final void Function()? onTap;
  final String text;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: const Color(0xff43A835),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  text,
                  style: Styles.style22,
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
