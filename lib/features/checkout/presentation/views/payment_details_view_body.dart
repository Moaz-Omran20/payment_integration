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
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
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
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autoValidateMode: autoValidateMode,
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 35)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: CustomButton(
                title: "Pay",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
