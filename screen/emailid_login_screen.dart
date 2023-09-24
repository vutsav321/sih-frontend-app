import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishi_sahayak/screen/signup_screen.dart';
import 'package:krishi_sahayak/widget/textfield_input.dart';

class EmailidLoginScreen extends StatefulWidget {
  const EmailidLoginScreen({super.key});

  @override
  State<EmailidLoginScreen> createState() => _EmailidLoginScreenState();
}

class _EmailidLoginScreenState extends State<EmailidLoginScreen> {
  final TextEditingController _emaileditingcontroller = TextEditingController();
  final TextEditingController _passwordeditingcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            const Image(image: AssetImage('assets/leaf.png')),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Email and Password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldInput(
                textEditingController: _emaileditingcontroller,
                hintText: 'Email Address',
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            TextFieldInput(
              textEditingController: _passwordeditingcontroller,
              hintText: 'Password',
              textInputType: TextInputType.visiblePassword,
              isPass: true,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                ),
              ),
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an account?"),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                InkWell(
                  onTap: () {
                    Get.to(SignupScreen(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: Container(
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
