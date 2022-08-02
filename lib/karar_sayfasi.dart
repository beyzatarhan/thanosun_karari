import 'dart:math';

import 'package:flutter/material.dart';

class KararSayfasi extends StatefulWidget {
  KararSayfasi({Key? key,}) : super(key: key);

  @override
  State<KararSayfasi> createState() => _KararSayfasiState();
}

class _KararSayfasiState extends State<KararSayfasi> {
  bool bagislandiMi = Random().nextBool();
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    bagislandiMi = Random().nextBool();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          bagislandiMi ? "BAĞIŞLANDIN" : "KATLEDİLDİN",
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
    );
  }
}