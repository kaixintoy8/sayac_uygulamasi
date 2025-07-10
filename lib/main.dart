import 'package:flutter/material.dart';
import 'package:sayac_uygulamasi/sayac_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SayacUygulamasiAnaSayfa(),
    );
  }
}

class SayacUygulamasiAnaSayfa extends StatelessWidget {
  SayacUygulamasiAnaSayfa({super.key});
  final SayacWidgetKey = GlobalKey<SayacWidgetState>();
  @override
  Widget build(BuildContext context) {
    debugPrint("build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayac Uygulaması"),
        backgroundColor: const Color.fromARGB(255, 166, 10, 62),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona basılma miktarı", style: TextStyle(fontSize: 16)),
            SizedBox(height: 18),
            SayacWidget(key: SayacWidgetKey),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          SayacWidgetKey.currentState!.arttir();
        },
      ),
    );
  }
}
