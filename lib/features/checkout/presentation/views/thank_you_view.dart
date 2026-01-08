import 'package:flutter/material.dart';
import 'package:payment_integration/core/shared_widgets/custom_credit_card.dart';
import 'package:payment_integration/core/shared_widgets/custom_payment_details.dart';
import 'package:payment_integration/core/utils/app_styles.dart';
import '../../../../core/shared_widgets/custom_barcode_widget.dart';
import '../../../../core/shared_widgets/total_price_widget.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                color: Color(0xFFededed),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 44),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text("Thank You!", style: AppStyles.styleMedium25),
                    SizedBox(height: 10),
                    Text(
                      "Your transaction was successful",
                      style: AppStyles.styleRegular18,
                    ),
                    SizedBox(height: 25),
                    CustomPaymentDetails(title: "Date", details: "01/24/2023"),
                    CustomPaymentDetails(title: "Time", details: "10:15 AM"),
                    CustomPaymentDetails(title: "To", details: "Sam Louis"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Divider(),
                    ),
                    TotalPriceWidget(),
                    CustomCreditCard(),
                    Spacer(),
                    CustomBarcodeWidget(),
                    Spacer(),
                    // SizedBox(height: MediaQuery.of(context).size.height * .1),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   bottom: MediaQuery.of(context).size.height * .2 + 20,
            //   child: Row(
            //     children: List.generate(30, (index) {
            //       return Expanded(
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 3),
            //           child: Container(height: 1, color: Color(0xFFB8B8B8)),
            //         ),
            //       );
            //     }),
            //   ),
            // ),
            Positioned(
              top: -44,
              right: 0,
              left: 0,
              child: CircleAvatar(
                radius: 44,
                backgroundColor: Color(0xFFededed),
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: AppStyles.primaryColor,
                  child: Icon(Icons.check, color: Colors.white, size: 40),
                ),
              ),
            ),
            // Positioned(
            //   left: -20,
            //   bottom: MediaQuery.of(context).size.height * .2,
            //   child: CircleAvatar(backgroundColor: Colors.white),
            // ),
            // Positioned(
            //   right: -20,
            //   bottom: MediaQuery.of(context).size.height * .2,
            //   child: CircleAvatar(backgroundColor: Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
