import 'package:flutter/material.dart';
import 'package:sosprong/future/home/screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return OKToast(
          position: ToastPosition.top,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'sosprog',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomePage(),
          ),
        );
      },
    );
  }
}
