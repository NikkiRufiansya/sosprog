// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToastWidget extends StatelessWidget {
  const CustomToastWidget(
      {required this.message,
      required this.messagecolor,
      required this.toascolor,
      required this.icon,
      required this.iconcolor});

  final String message;
  final Color? messagecolor;
  final Color? iconcolor;
  final Color? toascolor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: toascolor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      margin: REdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(
              message,
              style: TextStyle(color: messagecolor),
            ),
            const Spacer(),
            Icon(
              icon,
              size: 20.w,
              color: iconcolor,
            )
          ],
        ),
      ),
    );
  }
}
