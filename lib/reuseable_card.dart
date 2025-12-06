import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.colour,
    this.cardChild,
    this.onPress, // optional callback
    super.key,
  });

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress; // nullable

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild, // child widget
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour, // use passed color
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
