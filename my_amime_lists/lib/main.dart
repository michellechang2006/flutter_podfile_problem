import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_amime_lists/bottom_bars.dart';
import 'package:my_amime_lists/cards.dart';
import 'package:my_amime_lists/roller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.openSansTextTheme()),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'My Favorire Anime',
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(231, 114, 92, 1),
                  fontWeight: FontWeight.w900),
            ),
          ),
          backgroundColor: const Color.fromRGBO(251, 201, 169, 1),
          shadowColor: Colors.black38,
        ),
        bottomNavigationBar: const BottomBar(),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  card(50, 'https://i.imgur.com/G5feBXl.jpg'),
                  card(40, 'https://i.imgur.com/rb8Q3fV.jpg'),
                  card(-90, 'https://i.imgur.com/dn79RDs.jpg'),
                  card(110, 'https://i.imgur.com/l1CW9EN.png'),
                  RollerCard()
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.touch_app,
                    color: Colors.black87,
                    size: 20.0,
                    semanticLabel: '點擊卡片',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '點擊卡片',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
