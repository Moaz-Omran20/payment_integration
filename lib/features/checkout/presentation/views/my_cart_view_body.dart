import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/app_styles.dart';

import '../../../../generated/assets.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesCart),
          SizedBox(height: 19,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Subtotal",style: AppStyles.styleRegular18,),
              Text("\$42.97"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Subtotal",style: AppStyles.styleRegular18,),
              Text("\$42.97"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Subtotal",style: AppStyles.styleRegular18,),
              Text("\$42.97"),
            ],
          ),
          Divider(),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total",style: AppStyles.styleSemiBold24,),
              Text("\$50.97",style: AppStyles.styleSemiBold24,),
            ],
          )
        ],
      ),
    );
  }
}
