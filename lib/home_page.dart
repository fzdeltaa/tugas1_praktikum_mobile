import 'package:flutter/material.dart';
import 'package:tugas1_praktikum_mobile/galeri_soeharto.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.blue[100],
          leading: Text(""), title: const Text("Home Page"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Aplikasi Galeri", style: TextStyle(fontSize: 30)),
            const SizedBox(height: 100),
            const Text("Faza Denandra", style: TextStyle(fontSize: 25)),
            const Text("123210111", style: TextStyle(fontSize: 25)),
            const SizedBox(height: 50),
            const Text("Masuk? (tulis oke)"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextFormField(
                enabled: true,
                controller: textController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (textController.text == "oke") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GaleriSoeharto()));
                }
              },
              child: const Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}
