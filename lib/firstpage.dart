import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/colors.dart';
import 'package:onlynews/mainpage.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Hoşgeldiniz',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'images/basşlangıc.jpeg',
            width: 300,
          ),
          const Text('Güncel haberlere anında ulaşmak için takipte kalın'),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mainPage()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: HexColor(secondcolor),
                backgroundColor: HexColor(primarycolor),
              ),
              child: Container(
                width: 200,
                height: 80,
                child: const Center(
                    child: Text(
                  'Hadi Başlayalım',
                  style: TextStyle(fontSize: 22),
                )),
              ))
        ]),
      ),
    );
  }
}
