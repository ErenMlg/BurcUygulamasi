import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade800,
          title: const Text('404'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.error,
                  size: 68,
                  color: Colors.pink.shade800,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 20),
                child: Text(
                  'Aradığınız Sayfa Bulunamadı!',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade800),
                  child: const Text('Geriye Dön')),
            ],
          ),
        ),
      ),
    );
  }
}
