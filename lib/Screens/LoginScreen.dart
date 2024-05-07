import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mybotgpt/Helper/NaviagtionHelper.dart';
import 'package:mybotgpt/Screens/SignupScreen.dart';
import 'package:mybotgpt/Shared/Constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidden = true;
  bool checked = false;
  TextEditingController emailController = TextEditingController();
  // TextEditingController passController = TextEditingController();
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                'Welcome back to login!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Constants().titleColor),
              ),
              const Text(
                'Login to your account.Get easier then search engine result.',
                style: TextStyle(fontSize: 19, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: emailController,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outlined,
                    color: Colors.grey[400],
                    size: 24,
                  ),
                  hintText: 'Enter your email',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    pass = value;
                  });
                },
                // controller: passController,
                obscureText: hidden,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.grey[400],
                    size: 24,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        hidden = !hidden;
                      });
                    },
                    child: Icon(
                      hidden ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey[400],
                      size: 24,
                    ),
                  ),
                  hintText: 'Ctreate your password',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pass.length > 4
                      ? const Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Secure Password',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      : const Text(''),
                  const Text('Reset Password',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600)),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checked = !checked;
                      });
                    },
                    child: Icon(
                      checked
                          ? Icons.check_box_outline_blank
                          : Icons.check_box_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Remember login info',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        nextScreen(context, SignupScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Or sign in with using'),
                    SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        nextScreen(context, SignupScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/g3.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Conatinue With Google',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "don't have an account?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text("create an account",
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500))
                      ],
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
