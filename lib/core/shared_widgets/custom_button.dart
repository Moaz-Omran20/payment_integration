import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
 final String title;

 final Function() onTap;

  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyles.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppStyles.styleMedium24.copyWith(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
