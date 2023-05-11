import 'package:flutter/material.dart';
import 'package:login_tutorial/sign_in_page.dart';
import 'package:login_tutorial/sign_up_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const Icon(
              Icons.phone_iphone,
              size: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Say Hello to your new App !",
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("You've just saved a week of development and"),
            const Text("headaches"),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 290,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.red,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.white,
                  side: const BorderSide(width: 1, color: Colors.grey),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
