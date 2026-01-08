import 'package:flutter/material.dart';
import 'package:payment_integration/core/shared_widgets/custom_button.dart';
import '../../../../core/models/payment_method_model.dart';
import '../../../../core/shared_widgets/payment_method_list.dart';
import '../../../../generated/assets.dart';
import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final List<PaymentMethodModel> images = [
    PaymentMethodModel(image: Assets.imagesCreditCard),
    PaymentMethodModel(image: Assets.imagesPaypal),
    PaymentMethodModel(image: Assets.imagesApplePay),

  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(images.length, (index) {
              return GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  paymentMethodModel: images[index],
                  isActive: index == activeIndex,
                ),
              );
            }),
          ),
          CustomCreditCard(),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(title: "Pay", onTap: () {
            },),
          )
        ],
      ),
    );
  }
}
