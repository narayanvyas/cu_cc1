import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateForm() {
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailController.text)) {
    print('Email is wrong');
    return false;
  } else if (passwordController.text.length < 6) {
    print('Password is wrong');
    return false;
  } else {
    return true;
  }
}

void performLogin() {
  if (validateForm()) {
    print('Login Success');
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 30, right: 30),
          children: [
            Lottie.asset('assets/lottie/login_animation.json'),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            Container(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                performLogin();
              },
              child: Text('Login Now'),
            )
          ],
        ),
      ),
    );
  }
}
