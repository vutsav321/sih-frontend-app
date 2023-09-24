import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
            const Text(
              'OTP verification',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Pinput(
              animationCurve: Curves.linear,
              length: 6,
              pinAnimationType: PinAnimationType.slide,
              showCursor: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Edit phone number?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Flexible(
              child: Container(),
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}
