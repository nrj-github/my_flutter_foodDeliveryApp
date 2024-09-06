// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pizza_app/components/my_button.dart';
import 'package:pizza_app/components/my_textfield.dart';
import 'package:pizza_app/services/auth/auth_service.dart';

//import 'package:pizza_app/main.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text eding controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method

  void login() async {
    // get instance  of auth service 
    final _authService = AuthService();

    //try sign in 
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }

    // display any error
    catch(e) {
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  // forgot password
  void forgotPw() {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("User tapped forgot password."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                //logo
                Icon(
                  Icons.lock_open_outlined,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                    
                  const SizedBox(height: 50),
                  
                // welcome back, you've been missed!
                Text(
                  "Food Delivery App",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                    
                const SizedBox(height: 25),
            
                //email textfield
                MyTextfield(
                  controller: emailController,
                  hintText:"Email",
                  obscureText: false,
                ),
                    
                  const SizedBox(height: 10),
            
                //password
                MyTextfield(
                  controller: passwordController,
                  hintText:"Password",
                  obscureText: true,
                ),
                    
                  const SizedBox(height: 25),
                    
                //sign in button
                    
                MyButton(
                  text: "Login",
                 onTap: login,
                 ),
            
                 const SizedBox(height: 25),
                //not a member? Register now
                    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}