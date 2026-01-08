import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/payment_method_model.dart';
import '../utils/app_styles.dart';

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethodModel paymentMethodModel;
  final bool isActive ;


  const PaymentMethodItem({super.key, required this.paymentMethodModel,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 62,
        width: MediaQuery.of(context).size.width * .2,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color:  isActive
                ? AppStyles.primaryColor :Colors.white),
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(paymentMethodModel.image, height: 24,fit: BoxFit.scaleDown,),
        ),
      ),
    );
  }
}
