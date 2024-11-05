import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar({String? title}) {

  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/arrow.svg',
      ),
    ),
    elevation: 0,
    title: Text(
      title ?? '',
      style: Styles.style25,
    ),
  );
}