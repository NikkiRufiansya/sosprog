import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sosprong/core/utils/string_utils.dart';
import 'package:sosprong/core/widget/cutom_toas.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
            onPressed: () {
              showToastWidget(CustomToastWidget(
                icon: Icons.warning,
                iconcolor: Colors.red,
                message: Strings.exampletoasmesage,
                messagecolor: Colors.white,
                toascolor: Colors.amber,
              ));
            },
            child: Text(Strings.exampletoas)),
      ),
    );
  }
}
