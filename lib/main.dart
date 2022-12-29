import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  MyApps({super.key});
  @override
  State<MyApps> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApps> {
  int angka = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Dynamic Apps")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                angka.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        angka++;
                      });
                      print(angka);
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (angka != 0) {
                          angka--;
                        }
                      });
                      print(angka);
                    },
                    child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}
