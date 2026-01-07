import 'package:flutter/material.dart';
import 'package:payment_integration/core/shared_widgets/build_appbar.dart';
import 'my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
      body: MyCartViewBody(),
    );
  }
}
