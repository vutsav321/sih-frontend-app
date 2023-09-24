import 'package:flutter/material.dart';
import 'package:krishi_sahayak/screen/emailid_login_screen.dart';
import 'package:krishi_sahayak/screen/otp_screen.dart';
import 'package:krishi_sahayak/screen/signup_screen.dart';
import 'package:krishi_sahayak/widget/textfield_input.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    _countrycodecontroller.text = '+91';
  }

  @override
  void dispose() {
    super.dispose();
    _countrycodecontroller.dispose();
    _phoneNumbereditingcontroller.dispose();
  }

  final TextEditingController _countrycodecontroller = TextEditingController();
  final TextEditingController _phoneNumbereditingcontroller =
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
              flex: 1,
            ),
            const Image(image: AssetImage('assets/leaf.png')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Phone Verification',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 60,
                  child: TextFieldInput(
                      textEditingController: _countrycodecontroller,
                      hintText: '',
                      textInputType: TextInputType.number),
                ),
                const Divider(),
                Expanded(
                  child: TextFieldInput(
                    textEditingController: _phoneNumbereditingcontroller,
                    hintText: 'Phone number',
                    textInputType: TextInputType.number,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 35,
              width: double.infinity,
              child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  Get.to(OTPScreen(),
                      transition: Transition.leftToRightWithFade);
                },
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'OR',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 16,
                      child: Image(
                          image: NetworkImage(
                              'https://w7.pngwing.com/pngs/989/129/png-transparent-google-logo-google-search-meng-meng-company-text-logo-thumbnail.png')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login with Google Account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'OR',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Get.to(EmailidLoginScreen(),
                    transition: Transition.leftToRightWithFade);
              },
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            'Login with Email and Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ])),
            ),
            Flexible(
              child: Container(),
              flex: 1,
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
