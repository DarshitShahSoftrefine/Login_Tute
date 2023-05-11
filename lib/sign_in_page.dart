import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              " Sign In",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 60,
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding: const EdgeInsets.all(15),
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
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: 100,
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(32.0)),
                  contentPadding: const EdgeInsets.all(15),
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
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: FilledButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
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
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: FilledButton(
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
