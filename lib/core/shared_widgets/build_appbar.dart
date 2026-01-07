import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    elevation: 0,
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
    title: Text(title, style: AppStyles.styleMedium25),
    centerTitle: true,
  );
}
