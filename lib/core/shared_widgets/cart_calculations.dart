import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/app_styles.dart';

class CartCalculations extends StatelessWidget {
  const CartCalculations({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Order Subtotal",style: AppStyles.styleRegular18,),
        Text("\$42.97"),
      ],
    );
  }
}
