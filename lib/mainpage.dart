import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/NewsPage.dart';
import 'package:onlynews/colors.dart';
import 'package:onlynews/ehoca.dart';
import 'package:onlynews/firstpage.dart';
import 'package:onlynews/userinput.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  Widget cards(
      BuildContext context, String cardurl, String title, String category) {
    return Card(
      color: HexColor(primarycolor),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(color: HexColor(secondcolor)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsPage(category: category),
                ),
              );
            },
            child: Image.asset(
              cardurl,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(secondcolor),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: HexColor(primarycolor),
        title: Row(
          children: [
            SizedBox(
              width: 0,
            ),
            ClipOval(
              child: SizedBox(
                width: 250,
                height: 120,
                child: Image.asset(
                  'images/onlynewsfoto1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Icon(
                Icons.category_outlined,
                size: 50,
              ),
              Text(
                'Kategoriler',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: cards(context, 'images/spor.jpeg', 'Spor', 'sport')),
              Expanded(
                  child: cards(
                      context, 'images/science.jpeg', 'Bilim', 'science')),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: cards(context, 'images/eğitim.jpeg', 'Teknoloji',
                      'technology')),
              Expanded(
                  child: cards(
                      context, 'images/ekonomi.jpeg', 'Ekonomi', 'business')),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: cards(context, 'images/rammstein-crowd.jpg', 'Eğlence',
                      'entertainment')),
              Expanded(
                  child:
                      cards(context, 'images/sağlık.jpeg', 'Sağlık', 'health')),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: HexColor(primarycolor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: HexColor(secondcolor),
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ehoca()),
                );
              },
              icon: Icon(
                Icons.search,
                color: HexColor(secondcolor),
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => userinput()),
                );
              },
              icon: Icon(
                Icons.person,
                color: HexColor(secondcolor),
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
