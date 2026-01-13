import 'package:flutter/material.dart';
import 'package:payment_integration/core/shared_widgets/payment_method_list.dart';

import '../../generated/assets.dart';
import '../models/payment_method_model.dart';

class PaymentMethodsListView extends StatefulWidget {


  final ValueChanged<int> onChanged;

  const PaymentMethodsListView({
    super.key,
    required this.onChanged,
  });


  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<PaymentMethodModel> images = [
    PaymentMethodModel(image: Assets.imagesCreditCard),
    PaymentMethodModel(image: Assets.imagesPaypal),
    PaymentMethodModel(image: Assets.imagesApplePay),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(images.length, (index) {
        return GestureDetector(
          onTap: () {
            activeIndex = index;
            setState(() {});
            widget.onChanged(index);
          },
          child: PaymentMethodItem(
            paymentMethodModel: images[index],
            isActive: index == activeIndex,
          ),
        );
      }),
    );
  }
}
