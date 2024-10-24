import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';

enum RoundedButtonType { primary, secondary }

class RoundedButton extends StatelessWidget {
  final String title;
  final RoundedButtonType type; // primary, secondary
  final VoidCallback onPressed; //

  const RoundedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.type = RoundedButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite,
        elevation: 0,
        color: type == RoundedButtonType.primary
            ? TColor.primary
            : TColor.tertiary,
        height: 60,
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundedButtonType.primary
                ? Colors.white
                : TColor.primaryText,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
