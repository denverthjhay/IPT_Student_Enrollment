import 'package:flutter/material.dart';

import 'login.dart';

class GetstartedscreenWidget extends StatefulWidget {
  @override
  _GetstartedscreenWidgetState createState() => _GetstartedscreenWidgetState();
}

class _GetstartedscreenWidgetState extends State<GetstartedscreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50),
      child: main(context),
    ));
  }
}

Column main(context) {
  return Column(children: <Widget>[
    const SizedBox(
      height: 100,
    ),
    logo(),
    const SizedBox(
      height: 50,
    ),
    getstartedbutton(context),
    const SizedBox(
      height: 10,
    ),
    footertext(),
  ]);
}

Container logo() {
  return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Logo.png'), fit: BoxFit.fitWidth),
      ));
}

Container getstartedbutton(context) {
  return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Color.fromRGBO(17, 112, 33, 1),
    ),
    child: MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loginscreenWidget()),
        );
      },
      child: const Text(
        "Get Started",
        style: TextStyle(
          fontFamily: 'DM Sans',
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

SizedBox footertext() {
  return SizedBox(
      width: 169,
      height: 13,
      child: Stack(children: <Widget>[
        Text(
          'Already have an account? ',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'DM Sans',
              fontSize: 11,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ),
        Positioned(
            top: 0,
            left: 137,
            child: Text(
              'Log in',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(17, 112, 33, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 11,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            )),
      ]));
}
