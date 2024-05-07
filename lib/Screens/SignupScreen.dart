import 'package:flutter/material.dart';
import 'package:mybotgpt/Shared/Constant.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool hidden = true;
  bool checked = false;
  TextEditingController emailController = TextEditingController();
  String pass = '';
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
                'Create an account',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Constants().titleColor),
              ),
              const Text(
                'Signup for your free account.Get easier then search engine result.',
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
                    'Save password',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 180,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Create Account',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Aready have an account?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text("Logint",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500)),
                        )
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
