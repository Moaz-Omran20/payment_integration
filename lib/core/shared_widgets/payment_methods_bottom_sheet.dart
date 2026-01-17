import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_integration/core/api_keys.dart';
import 'package:payment_integration/core/models/payment_intent_input_model.dart';
import 'package:payment_integration/core/shared_widgets/payment_methods_list_view.dart';
import 'package:payment_integration/features/checkout/presentation/view_model/payment_cubit.dart';
import 'package:payment_integration/features/checkout/presentation/views/thank_you_view.dart';

import 'custom_button.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  int selectedPaymentIndex = 0;

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
              Expanded(
                child: PaymentMethodsListView(
                  onChanged: (value) {
                    selectedPaymentIndex = value;
                  },
                ),
              ),
            ],
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
                    selectedPaymentIndex == 0
                        ? context.read<PaymentCubit>().makePayment(
                            paymentIntentInputModel: PaymentIntentInputModel(
                              amount: "2000",
                              currency: "usd",
                              // customerId: "cus_TmL4M1Q4i64922",
                            ),
                          )
                        : Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => PaypalCheckoutView(
                                sandboxMode: true,
                                clientId: ApiKeys.paypalClientId,
                                secretKey: ApiKeys.paypalSecretKey,
                                transactions: const [
                                  {
                                    "amount": {
                                      "total": '70',
                                      "currency": "USD",
                                      "details": {
                                        "subtotal": '70',
                                        "shipping": '0',
                                        "shipping_discount": 0,
                                      },
                                    },
                                    "description":
                                        "The payment transaction description.",
                                    "item_list": {
                                      "items": [
                                        {
                                          "name": "Apple",
                                          "quantity": 4,
                                          "price": '5',
                                          "currency": "USD",
                                        },
                                        {
                                          "name": "Pineapple",
                                          "quantity": 5,
                                          "price": '10',
                                          "currency": "USD",
                                        },
                                      ],

                                    },
                                  },
                                ],
                                note:
                                    "Contact us for any questions on your order.",
                                onSuccess: (Map params) async {
                                  print("onSuccess: $params");
                                },
                                onError: (error) {
                                  print("onError: $error");
                                  Navigator.pop(context);
                                },
                                onCancel: () {
                                  print('cancelled:');
                                },
                              ),
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
