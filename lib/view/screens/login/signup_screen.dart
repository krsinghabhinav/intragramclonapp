import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/login/login_screen.dart';

import '../../widgets/uihelper.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(
              imgUrl: "Instagram Logo.png",
            ),
            SizedBox(
              height: 25,
            ),
            UiHelper.CustomTextField(
                controller: _emailController,
                text: 'Email',
                tohide: false,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(
                controller: _passwordController,
                text: 'Password',
                tohide: false,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(
                controller: _userNameController,
                text: 'Username',
                tohide: false,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextButton(
              text: 'Sign up',
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade300),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Sign in.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
