import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

AppBar customAppBar({required String title, required BuildContext context}) {
  return AppBar(
    elevation: 0,
    scrolledUnderElevation: 3,
    backgroundColor: Colors.white,

    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new),
    ),
    title: Text(title, style: AppStyles.styleMedium25),
    centerTitle: true,
  );
}
