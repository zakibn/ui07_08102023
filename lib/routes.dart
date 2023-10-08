import 'package:flutter/material.dart';
import 'package:ui07/core/constant/routes.dart';
import 'package:ui07/view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};