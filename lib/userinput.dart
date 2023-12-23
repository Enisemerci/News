import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/colors.dart';

class userinput extends StatelessWidget {
  const userinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(secondcolor),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: HexColor(primarycolor),
        title: Row(
          children: [
            const SizedBox(
              width: 0,
            ),
            ClipOval(
              child: SizedBox(
                width: 250,
                height: 120,
                child: Image.asset(
                  'images/onlynewsfoto1.jpeg',
                  fit: BoxFit.cover, // Resmi tamamen kaplamak için
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //heme giriş yazısı
          Container(
            color: HexColor(usercolor),
            height: 100,
            width: 500,
            child: const Column(
              children: [
                Text(
                  'HEMEN GİRİŞ YAP',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
                Text(
                  'EN GÜNCEL HABERLERİ KAÇIRMA!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          //email
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.mail,
                size: 75,
              ),
              Container(
                color: HexColor(usercolor),
                width: 250,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail adresinizi girin',
                    labelStyle: TextStyle(color: Colors.black), 
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black), 
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black), 
                    ),
                  ),
                  style:
                      TextStyle(color: HexColor(primarycolor)), 
                ),
              )
            ],
          ),
          //şifre
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                size: 75,
              ),
              Container(
                color: HexColor(usercolor),
                width: 250,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Şifrenizi girin',
                    labelStyle: TextStyle(color: Colors.black), 
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black), 
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black), 
                    ),
                  ),
                  style:
                      TextStyle(color: HexColor(primarycolor)), 
                ),
              )
            ],
          ),
          //şifremi unuttum
          Row(
            children: [
              const SizedBox(
                width: 240,
              ),
              Text(
                'Şifremi unuttum',
                style: TextStyle(
                    color: HexColor(thirdcolor),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          //giriş yap
          Container(
            width: 300,
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: HexColor(primarycolor)),
              child: Text(
                'GİRİŞ YAP',
                style: TextStyle(color: HexColor(secondcolor), fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 75,
          ),
          //hesabınız yok mu
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hesabınız yok mu? ',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Hemen Kaydolun',
                style: TextStyle(
                    fontSize: 18,
                    color: HexColor(thirdcolor),
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
