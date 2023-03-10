import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFED4C5C),
            Color(0xFF5c0c14),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logoJT.png',
                width: MediaQuery.of(context).size.width * .7,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            SignInButton(
              Buttons.Google,
              text: 'Login com o Google',
              padding: const EdgeInsets.all(8),
              elevation: 5,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
