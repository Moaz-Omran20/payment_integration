import 'package:flutter/material.dart';
import 'package:payment_integration/core/shared_widgets/payment_methods_bottom_sheet.dart';
import 'package:payment_integration/core/utils/app_styles.dart';
import '../../../../core/shared_widgets/cart_calculations.dart';
import '../../../../core/shared_widgets/custom_button.dart';
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
          Expanded(child: Image.asset(Assets.imagesCart)),
          SizedBox(height: 19),
          CartCalculations(title: 'Order Subtotal', amount: '\$42.97'),
          CartCalculations(title: 'Discount', amount: '\$0'),
          CartCalculations(title: 'Shipping', amount: '\$8'),
          Divider(),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total", style: AppStyles.styleSemiBold24),
              Text("\$50.97", style: AppStyles.styleSemiBold24),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: "Complete Payment",
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentDetailsView(),));
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return PaymentMethodsBottomSheet();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
