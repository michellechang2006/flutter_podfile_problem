import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(context) {
    return const BottomAppBar(
      color: Color.fromRGBO(251, 201, 169, 1),
      height: 50,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Created by @michellechang2006',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
