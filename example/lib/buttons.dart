import 'package:basepack/buttons/bordered_rectangular_button.dart';
import 'package:basepack/buttons/rectangle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign in to Continue to Netflix',
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                width: 200,
                height: 100,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Netflix_2015_logo.svg/1280px-Netflix_2015_logo.svg.png')),
            SizedBox(height: 30),
            BorderedRectangularButton(
              width: 300,
              backgroundColor: Colors.black,
              cornerRadius: 30,
              leading:
                  Icon(FontAwesomeIcons.phone, color: Colors.white, size: 15),
              trailing: _isPressed
                  ? LoadingProgress()
                  : Icon(Icons.arrow_right_rounded,
                      color: Colors.white70, size: 20),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(5),
              text: 'Continue with Phone',
              textStyle: GoogleFonts.nunito(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
            ),
            RectangularButton(
              width: 300,
              backgroundColor: Colors.white,
              cornerRadius: 30,
              leading: Icon(FontAwesomeIcons.google,
                  color: Colors.redAccent, size: 15),
              trailing: _isPressed
                  ? LoadingProgress(color: Colors.black87)
                  : Icon(Icons.arrow_right_rounded,
                      color: Colors.black87, size: 20),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(5),
              text: 'Continue with Google',
              textStyle: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
            ),
            RectangularButton(
              width: 300,
              backgroundColor: Colors.white,
              cornerRadius: 30,
              leading: Icon(FontAwesomeIcons.facebookF,
                  color: Colors.blue, size: 15),
              trailing: _isPressed
                  ? LoadingProgress(color: Colors.black87)
                  : Icon(Icons.arrow_right_rounded,
                      color: Colors.black87, size: 20),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(5),
              text: 'Continue with Facebook',
              textStyle: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingProgress extends StatelessWidget {
  const LoadingProgress({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Center(
          child: SizedBox(
            height: 18,
            width: 18,
            child: CircularProgressIndicator(
              color: color,
              strokeWidth: 2,
            ),
          ),
        ),
      ],
    );
  }
}
