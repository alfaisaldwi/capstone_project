import 'package:flutter/material.dart';

import 'package:get/get.dart';


class CekStatusView extends StatefulWidget {
  CekStatusView({Key? key}) : super(key: key);

  @override
  State<CekStatusView> createState() => _CekStatusViewState();
}

class _CekStatusViewState extends State<CekStatusView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CekStatusView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CekStatusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
