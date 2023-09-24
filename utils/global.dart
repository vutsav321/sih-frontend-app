import 'package:flutter/material.dart';
import 'package:krishi_sahayak/screen/home_screen.dart';
import 'package:krishi_sahayak/screen/uploadimage_screen.dart';

List<Widget> HomeScreenItems = [
  HomeScreen(),
  UploadScreen(),
  Center(
    child: Text('History'),
  ),
  Center(
    child: Text('Profile'),
  ),
];
