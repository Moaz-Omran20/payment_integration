import 'package:flutter/material.dart';
import 'package:payment_integration/features/checkout/presentation/views/payment_details_view_body.dart';

import '../../../../core/shared_widgets/build_appbar.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}
