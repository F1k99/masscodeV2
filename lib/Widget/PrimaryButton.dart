import 'package:flutter/material.dart';
import 'package:masscode/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String textValue;
  final Function() onPressed;

  PrimaryButton({
    required this.textValue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        hoverColor: SecondaryColor,
        label: Text(textValue, style: ButtonText),
        backgroundColor: primaryColor,
        elevation: 18,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              25), // Adjust the radius as per your requirements
        ),
      ),
    );
  }
}
