import 'package:flutter/material.dart';
import 'dart:math' as math;

var random = math.Random();
var rotateValue = (random.nextBool() ? 1 : -1) * (random.nextInt(150) + 50);
var index = random.nextInt(5);

const List ratingList = ['⭐⭐⭐⭐', '⭐⭐⭐⭐⭐', '⭐⭐⭐⭐⭐', '⭐⭐⭐⭐', '⭐⭐⭐⭐⭐', '⭐⭐⭐'];
const List scr = [
  'https://i.imgur.com/gN1T60q.jpg',
  'https://i.imgur.com/tjcJwB0.jpg',
  'https://i.imgur.com/KJcinSV.jpg',
  'https://i.imgur.com/8lHbfJe.jpg',
  'https://i.imgur.com/kwOdpPg.jpg',
  'https://i.imgur.com/Q6WAQJi.jpg'
];

var url = scr[index];
String rating = ratingList[index];

class RollerCard extends StatefulWidget {
  const RollerCard({super.key});
  @override
  _RollerCardState createState() => _RollerCardState();
}

class _RollerCardState extends State<RollerCard> {
  var lastIndex = -1;
  dynamic index;

  void updateIndex() {
    do {
      index = random.nextInt(5);
    } while (index == lastIndex);
    lastIndex = index;
  }

  void roller() {
    setState(
      () {
        updateIndex();
        url = scr[index];
        rating = ratingList[index];
        rotateValue = (random.nextBool() ? 1 : -1) * (random.nextInt(150) + 50);
        print('rotateValue: $rotateValue');
        print('index: $index');
      },
    );
  }

  @override
  Widget build(context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextButton(
          onPressed: roller,
          child: Transform.rotate(
            angle: math.pi / rotateValue,
            child: Container(
              width: 322,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(251, 201, 169, 1),
                    width: 5.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.network(
                  url,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 8.5,
          child: Transform.rotate(
            angle: math.pi / rotateValue,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Card(
                color: Colors.white.withOpacity(0.8),
                child: Text(
                  textAlign: TextAlign.center,
                  rating,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
