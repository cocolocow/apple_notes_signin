import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apple Notes Welcome Screen',
      home: Scaffold(
        body: WelcomeScreen(),
      ),
      theme: ThemeData(
        fontFamily: 'SFProDisplay',
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        const GradientOverlay(),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Spacer(flex: 6),
                  Logo(),
                  SizedBox(height: 20),
                  WelcomeText(),
                  SizedBox(height: 10),
                  DescriptionText(),
                  Spacer(flex: 1),
                  AppleButton(),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/bg.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class GradientOverlay extends StatelessWidget {
  const GradientOverlay();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow[700]!.withOpacity(0.8),
              const Color.fromRGBO(255, 255, 255, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.4, 0.8],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.2,
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Image.asset(
        'assets/notes-icon.png',
        height: 150,
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to\nApple Notes',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        height: 1,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Scribble, type, and collaborate\non the go.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.6),
        height: 1,
      ),
    );
  }
}

class AppleButton extends StatelessWidget {
  const AppleButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.apple, color: Colors.white),
          SizedBox(width: 10),
          Text(
            'Continue with Apple',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
