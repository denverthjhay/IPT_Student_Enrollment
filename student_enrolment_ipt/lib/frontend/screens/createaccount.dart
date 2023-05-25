import 'package:flutter/material.dart';
import 'package:student_enrolment_ipt/frontend/models/student.dart';
import 'login.dart';

class createaccountscreenWidget extends StatefulWidget {
  @override
  _createaccountscreenWidget createState() => _createaccountscreenWidget();
}

class _createaccountscreenWidget extends State<createaccountscreenWidget> {
  bool agree = false;
  bool _obscureText = true;
  bool _obscureText2 = true;
  bool success = false;

  final studentIdController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassword = TextEditingController();
  final degreeProgramController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final collegeController = TextEditingController();
  final yrlevelController = TextEditingController();

  void _submit() {
    if (studentIdController.text.isNotEmpty &&
        firstNameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        degreeProgramController.text.isNotEmpty &&
        collegeController.text.isNotEmpty &&
        yrlevelController.text.isNotEmpty &&
        passwordController.text == confirmPassword.text) {
      Student newStudent = Student(
        studentId: studentIdController.text,
        password: passwordController.text,
        degreeProgram: degreeProgramController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        college: collegeController.text,
        yearLevel: int.parse(yrlevelController.text),
      );
      Navigator.pop(context);
    } else {
      showFailure(context);
    }
  }

  Future<void> showFailure(BuildContext context) async {
    return showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text(
              "Error",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            content: const Text("Please enter valid details.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              )
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Backbutton(context),
                const SizedBox(
                  width: 25,
                ),
                CreateText(),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            EnjoyText(),
            const SizedBox(
              height: 10,
            ),
            StudIdHeader(),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: studentIdController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "2019000000",
                labelStyle: const TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //First Name , Last Name
            Row(
              children: [
                FirstName(),
                const SizedBox(
                  width: 160,
                ),
                LastName(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: firstNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "John Mark",
                      labelStyle: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    controller: lastNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Doe",
                      labelStyle: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // End
            //College , Degree , Home Address
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                College(),
                const SizedBox(
                  width: 110,
                ),
                DegProg(),
                const SizedBox(
                  width: 50,
                ),
                Yrlvl(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: collegeController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "SCS",
                      labelStyle: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    controller: degreeProgramController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "BSIT",
                      labelStyle: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    controller: yrlevelController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "3",
                      labelStyle: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Password(),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Enter Password",
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText =
                          !_obscureText; // Toggle the text visibility
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ConfirmPassword(),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: confirmPassword,
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscureText2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Confirm Password",
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText2 ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText2 =
                          !_obscureText2; // Toggle the text visibility
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Checkbox(
                  value: agree,
                  onChanged: (value) {
                    setState(() {
                      agree = value ?? false;
                    });
                  },
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Accept ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                            color: Color.fromRGBO(17, 112, 33, 1),
                          )),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Conditions.',
                          style: TextStyle(
                            color: Color.fromRGBO(17, 112, 33, 1),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(235, 235, 235, 235),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(17, 112, 33, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: /*() {
                    if (agree == true) {
                      Student newStudent = Student(
                        studentId: studentIdController.text,
                        password: passwordController.text,
                        degreeProgram: degreeProgramController.text,
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        college: collegeController.text,
                        yearLevel: int.parse(yrlevelController.text),
                      );
                    } else {
                      null;
                    }
                  }*/
                      agree ? _submit : null,
                  child: const Text(
                    'Create your account',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 30,
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            Footer()
          ]),
        ),
      ),
    );
  }
}

IconButton Backbutton(context) {
  return IconButton(
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginscreenWidget()),
      );
    },
    icon: const Icon(
      Icons.arrow_back,
      color: Color.fromRGBO(17, 112, 33, 1),
    ),
  );
}

Text CreateText() {
  return const Text(
    'Create your account',
    style: TextStyle(
        color: Color.fromRGBO(17, 112, 33, 1),
        fontFamily: 'DM Sans',
        fontSize: 25,
        letterSpacing:
            0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.bold,
        height: 2),
  );
}

Text EnjoyText() {
  return const Text(
    'Create an account to enjoy University of VALO.',
    style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 11,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 2),
  );
}

Container StudIdHeader() {
  return Container(
    width: 500,
    child: const Text(
      'Student ID No.',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Text FirstName() {
  return const Text(
    'First Name',
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text LastName() {
  return const Text(
    'Last Name',
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text College() {
  return const Text(
    'College',
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text DegProg() {
  return const Text(
    'Degree Program',
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text Yrlvl() {
  return const Text(
    'Year Level',
    style: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'DM Sans',
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  );
}

Container Password() {
  return Container(
    width: 500,
    child: const Text(
      'Password',
      style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Container ConfirmPassword() {
  return Container(
    width: 500,
    child: const Text(
      'Confirm Password',
      style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Center Footer() {
  return Center(
    child: RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'By creating an account you agree to our ',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'DM Sans',
          fontSize: 13,
          fontWeight: FontWeight.normal,
        ),
        children: <TextSpan>[
          TextSpan(
              text: 'Terms of Service',
              style: TextStyle(
                color: Color.fromRGBO(17, 112, 33, 1),
              )),
          TextSpan(text: ' and '),
          TextSpan(
              text: 'Privacy Policy.',
              style: TextStyle(
                color: Color.fromRGBO(17, 112, 33, 1),
              )),
        ],
      ),
    ),
  );
}
