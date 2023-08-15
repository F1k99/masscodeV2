import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: ShapeDecoration(
        color: Color(0xFFE66D57),
        shape: OvalBorder(),
      ),
    );
  }
}
