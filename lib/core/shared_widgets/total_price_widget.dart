import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 10,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total", style: AppStyles.styleSemiBold24),
          Text("\$50.97", style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}
