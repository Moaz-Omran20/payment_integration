import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_integration/core/models/payment_intent_input_model.dart';
import 'package:payment_integration/core/shared_widgets/payment_methods_list_view.dart';
import 'package:payment_integration/features/checkout/presentation/view_model/payment_cubit.dart';
import 'package:payment_integration/features/checkout/presentation/views/thank_you_view.dart';

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
            children: [Expanded(child: PaymentMethodsListView())],
          ),
          SizedBox(height: 35),
          BlocConsumer<PaymentCubit, PaymentState>(
            listener: (context, state) {
              if (state is PaymentSuccess) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThankYouView()),
                );
              }
            },
            builder: (context, state) {
              if (state is PaymentLoading) {
                return CircularProgressIndicator();
              } else {
                return CustomButton(
                  title: "Continue",
                  onTap: () {
                    context.read<PaymentCubit>().makePayment(
                      paymentIntentInputModel: PaymentIntentInputModel(
                        amount: "2000",
                        currency: "usd",
                        // customerId: "cus_TmL4M1Q4i64922",
                      ),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
