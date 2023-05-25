import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'createaccount.dart';

class loginscreenWidget extends StatefulWidget {
  @override
  _loginscreenWidgetState createState() => _loginscreenWidgetState();
}

class _loginscreenWidgetState extends State<loginscreenWidget> {
  bool _obscureText2 = true;

  void togglePasswordVisibility() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                hello(),
                welcome(),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: Color.fromARGB(235, 235, 235, 235),
                    filled: true,
                    labelText: "Enter username",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: const Color.fromARGB(235, 235, 235, 235),
                    filled: true,
                    labelText: "Enter Password",
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText2 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: togglePasswordVisibility,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 25,
                ),
                signbutton(),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 20,
                ),
                register(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Text hello() {
  return const Text(
    "Hello!",
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 34,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
      height: 1,
    ),
  );
}

Text welcome() {
  return const Text(
    'Welcome Student',
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 26,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 2,
    ),
  );
}

Container signbutton() {
  return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Color.fromRGBO(17, 112, 33, 1),
    ),
    child: MaterialButton(
      onPressed: () {},
      child: const Text(
        "Sign In",
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

Row register(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Not a member?",
        style: TextStyle(
          color: Colors.black.withOpacity(0.7),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => createaccountscreenWidget(),
            ),
          );
        },
        child: const Text("Register Now"),
      ),
    ],
  );
}
