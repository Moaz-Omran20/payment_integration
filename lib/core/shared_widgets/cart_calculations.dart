import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/app_styles.dart';

class CartCalculations extends StatelessWidget {
  const CartCalculations({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title;

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.styleRegular18),
        Text(amount,style: AppStyles.styleRegular18),
      ],
    );
  }
}
