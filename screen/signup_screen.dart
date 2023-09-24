import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishi_sahayak/screen/login_screen.dart';
import 'package:krishi_sahayak/screen/otp_screen.dart';
import 'package:krishi_sahayak/widget/textfield_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    super.initState();
    _countrycodecontroller.text = '+91';
  }

  final TextEditingController _firstnamecontroller = TextEditingController();
  final TextEditingController _lastnamecontroller = TextEditingController();
  final TextEditingController _countrycodecontroller = TextEditingController();
  final TextEditingController _phoneNumbereditingcontroller =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstnamecontroller.dispose();
    _lastnamecontroller.dispose();
    _phoneNumbereditingcontroller.dispose();
    _countrycodecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Flexible(
            flex: 1,
            child: Container(),
          ),
          const Image(image: AssetImage('assets/leaf.png')),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Welcome !',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldInput(
              textEditingController: _firstnamecontroller,
              hintText: 'First Name',
              textInputType: TextInputType.name),
          const SizedBox(
            height: 10,
          ),
          TextFieldInput(
              textEditingController: _lastnamecontroller,
              hintText: 'Last Name',
              textInputType: TextInputType.name),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                Get.to(OTPScreen(), transition: Transition.rightToLeftWithFade);
              },
              child: Text(
                'Send OTP',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'OR',
            style: TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
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
                    'Continue with Google Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            'OR',
            style: TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.email_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Text(
                      'Continue with Email and Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Have an account?"),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
              InkWell(
                onTap: () {
                  Get.to(LoginScreen(),
                      transition: Transition.rightToLeftWithFade);
                },
                child: Container(
                  child: Text(
                    "Log in",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
              )
            ],
          )
        ]),
      )),
    );
  }
}
