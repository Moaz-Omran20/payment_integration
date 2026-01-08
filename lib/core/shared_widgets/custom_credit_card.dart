import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../utils/app_styles.dart';

class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            Assets.imagesCreditCardLogo,
          ),
          title: Text(
            "Credit Card",
            style: AppStyles.styleRegular18,
          ),
          subtitle: Text("Mastercard **78"),
        ),
      ),
    );
  }
}
