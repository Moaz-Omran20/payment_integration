import 'package:flutter/material.dart';
import 'package:payment_integration/core/shared_widgets/payment_methods_list_view.dart';

import 'custom_button.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: PaymentMethodsListView()),
            ],
          ),
          SizedBox(height: 35),
          CustomButton(title: "Continue", onTap: () {}),
        ],
      ),
    );
  }
}
