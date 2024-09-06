import 'package:flutter/material.dart';
import 'package:pizza_app/pages/login_page.dart';
import 'package:pizza_app/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //intialy shows the login page
  bool showLoinPage = true;

  //toggle between login and register page
  void togglePages(){
    setState(() {
      showLoinPage = !showLoinPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoinPage) {
  return LoginPage(onTap: togglePages);
}else {
  return RegisterPage(onTap: togglePages);
}
  }
}