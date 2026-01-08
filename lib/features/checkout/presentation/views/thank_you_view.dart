import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/app_styles.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                color: Color(0xFFD9D9D9),
              ),
            ),
            Positioned(
              top: -44,
              right: 0,
              left: 0,
              child: CircleAvatar(
                radius: 44,
                backgroundColor: Color(0xFFD9D9D9),
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: AppStyles.primaryColor,
                  child: Icon(Icons.check, color: Colors.white, size: 40),
                ),
              ),
            ),
            Positioned(
              left: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: CircleAvatar(backgroundColor: Colors.white),
            ),
            Positioned(
              right: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: CircleAvatar(backgroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
