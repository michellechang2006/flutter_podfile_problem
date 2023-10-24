import 'package:flutter/material.dart';
import 'dart:math' as math;

class card extends StatelessWidget {
  const card(this.rotateVaule, this.scr, {super.key});
  final int rotateVaule;
  final String scr;
  @override
  Widget build(context) {
    return Transform.rotate(
      angle: math.pi / rotateVaule,
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
         child: Image.network(scr),
        ),
      ),
    );
  }
}
