import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomBarcodeWidget extends StatelessWidget {
  const CustomBarcodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: BarcodeWidget(
                width: 20,
                height: 70,
                barcode: Barcode.code128(),
                data: '45485622',
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            width: 113,
            height: 58,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppStyles.primaryColor),
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                "PAID",
                style: AppStyles.styleRegular18.copyWith(
                  color: AppStyles.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
