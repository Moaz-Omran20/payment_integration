import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomPaymentDetails extends StatelessWidget {
  final String title;
  final String details;

  const CustomPaymentDetails({
    super.key,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.styleRegular18),
          Text(details, style: AppStyles.styleSemiBold18),
        ],
      ),
    );
  }
}
