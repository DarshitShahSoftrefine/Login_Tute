import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              " Sign Up",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 10,
              height: 70,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  labelText: "First Name",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 10,
              height: 70,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  labelText: "Last Name",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 10,
              height: 70,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  labelText: "Email Address",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 10,
              height: 70,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 10,
              height: 70,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  labelText: "Confirm Password",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 60, right: 60, bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 50),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                child: const Text(
                  "Log In",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 50),
                  backgroundColor: const Color.fromARGB(255, 37, 96, 145),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                child: const Text(
                  "Facebook Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
