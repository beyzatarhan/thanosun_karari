import 'package:flutter/material.dart';
import 'package:tanosun_karari/karar_sayfasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            color: Colors.white,
          ),
          child: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return KararSayfasi();
                  }));
                },
                child: const Text(
                  "BAŞLAT",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )),

          ),
        ),
      ),
    );
  }
}
