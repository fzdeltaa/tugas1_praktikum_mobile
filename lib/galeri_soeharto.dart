import 'package:flutter/material.dart';
import 'package:tugas1_praktikum_mobile/home_page.dart';

class GaleriSoeharto extends StatelessWidget {
  const GaleriSoeharto({super.key});

  static const imgList = [
    {
      "gambar": "images/Suharto1.jpg",
      "deskripsi": "Soeharto ramah tamah dengan rakyat yang tengah membawa air minum di Desa Pratji Mantoro, Wonogiri pada 23 Juli 1970",
    },
    {
      "gambar": "images/Suharto2.jpg",
      "deskripsi": "Presiden Soeharto meninjau Jambore Jaya IV dan Apel Pramuka, Cibubur, 16 Agustus 1976",
    },
    {
      "gambar": "images/Suharto4.jpg",
      "deskripsi": "Presiden Soeharto menganugerahkan Bintang RI Kelas I kepada Bung Hatta, 15 Agustus 1972",
    },
    {
      "gambar": "images/Suharto5.jpg",
      "deskripsi": "Presiden Soeharto makan siang di Desa Ketj Polanhardjo, 20 Juli 1970",
    },
    {
      "gambar": "images/Suharto7.jpg",
      "deskripsi": "Presiden Soeharto menerima 3 orang astronot Apollo 17, Harrison Hagan Schmitt, Eugene Cernan dan Ronald Ellwin Evans",
    },
    {
      "gambar": "images/Suharto9.jpg",
      "deskripsi": "Presiden Soeharto memaksa mendarat di Bandara Sarajevo, Bosnia untuk melihat langsung kondisi rakyat Bosnia dan Herzegovina yang menjadi korban keganasan agresi pasukan militer Serbia",
    },
    {
      "gambar": "images/Suharto1.jpg",
      "deskripsi": "Soeharto ramah tamah dengan rakyat yang tengah membawa air minum di Desa Pratji Mantoro, Wonogiri pada 23 Juli 1970",
    },
    {
      "gambar": "images/Suharto2.jpg",
      "deskripsi": "Presiden Soeharto meninjau Jambore Jaya IV dan Apel Pramuka, Cibubur, 16 Agustus 1976",
    },
    {
      "gambar": "images/Suharto4.jpg",
      "deskripsi": "Presiden Soeharto menganugerahkan Bintang RI Kelas I kepada Bung Hatta, 15 Agustus 1972",
    },
    {
      "gambar": "images/Suharto5.jpg",
      "deskripsi": "Presiden Soeharto makan siang di Desa Ketj Polanhardjo, 20 Juli 1970",
    },
    {
      "gambar": "images/Suharto7.jpg",
      "deskripsi": "Presiden Soeharto menerima 3 orang astronot Apollo 17, Harrison Hagan Schmitt, Eugene Cernan dan Ronald Ellwin Evans",
    },
    {
      "gambar": "images/Suharto9.jpg",
      "deskripsi": "Presiden Soeharto memaksa mendarat di Bandara Sarajevo, Bosnia untuk melihat langsung kondisi rakyat Bosnia dan Herzegovina yang menjadi korban keganasan agresi pasukan militer Serbia",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          surfaceTintColor: Colors.transparent,
          leading: const Text(""),
          title: const Text("Galeri"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Column(
          children: [
            const Text(
              "Koleksi Foto Soeharto",
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: imgList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black26,
                      child: Expanded(
                        child: Column(
                          children: [
                            Image.asset(imgList[index]['gambar'].toString()),
                            Expanded(
                                child: Text(
                                    imgList[index]['deskripsi'].toString()))
                          ],
                        ),
                        // child: Image.asset(imgList[index]['gambar'].toString()),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
