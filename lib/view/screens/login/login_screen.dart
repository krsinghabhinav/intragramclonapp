import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/login/signup_screen.dart';
import 'package:intragramclonapp/view/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
              height: 20,
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextButton(
              text: 'Log in',
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgUrl: "fbIcon.png"),
                TextButton(
                  onPressed: () {},
                  child: Text("Log in with Facebook"),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("OR"),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade300),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text(
                    "Sign up.",
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
