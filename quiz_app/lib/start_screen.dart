import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changeScreen, {super.key});
  final void Function() changeScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromRGBO(255, 255, 255, 0.5),
          ),
         const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton.icon(
              onPressed: changeScreen,
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor:const Color.fromRGBO(85, 60, 139, 1),
                shadowColor: const Color.fromRGBO(46, 30, 81, 1),
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
