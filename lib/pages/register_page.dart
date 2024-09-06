// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pizza_app/services/auth/auth_service.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
    final void Function()? onTap;

    const RegisterPage({
      super.key,
      required this.onTap
      });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   //text eding controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  // register method
  void register() async {
    // get the auth service
    final _authService =AuthService();

    // check if the password match -> create user
    if (passwordController.text == confirmpasswordController.text) {
      // try creating user
      try {
        await _authService.signUpWithEmailPassword(emailController.text, passwordController.text,);
      }
      // display any error
      catch (e) {
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // if password dont  match -> show error
    else{
      showDialog(
          context: context, 
          builder: (context) => const AlertDialog(
            title: Text("Password don't match!"),
          ),
        );
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),
              
            //message app login
            Text("Lets's create an account for you",
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

              const SizedBox(height: 10),

            //confirm password
            MyTextfield(
              controller: confirmpasswordController,
              hintText:"Confirm Password",
              obscureText: true,
            ),

              const SizedBox(height: 10),

            //sign in button

            MyButton(
              text: "Sign up",
             onTap: register),
        
             const SizedBox(height: 25),

            //Already hava an account? login here

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already hava an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login now",
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
    );
  }
}