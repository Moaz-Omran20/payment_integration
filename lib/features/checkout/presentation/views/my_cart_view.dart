import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import 'my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("My Cart", style: AppStyles.styleMedium25),
        centerTitle: true,
      ),
      body: MyCartViewBody(),
    );
  }
}
