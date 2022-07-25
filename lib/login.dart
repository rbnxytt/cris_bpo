// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:my_app/auth.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_layout/background.dart';

class LoginPage extends StatefulWidget {
  // static const String id = 'login-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailController, passwordController;
  // final Auth auth = Auth();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController!.text.trim(),
  //       password: passwordController!.text.trim());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Center(
            child: Container(
              height: 550,
              width: 350.0,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Transform.scale(
                        scale: 0.45,
                        child: Image.asset('assets/images/logo.jpeg')),
                  ),
                  Expanded(
                    child: Text(
                      'Welcome',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700, fontSize: 25.0),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        showCursor: false,
                        controller: emailController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Username or Email'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: TextFormField(
                        showCursor: false,
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Password'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: TextButton(
                        onPressed: () {},
                        // onPressed: signIn,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromARGB(255, 231, 38, 102)),
                          width: double.infinity,
                          height: 50.0,
                          child: Center(
                            child: Text('LOGIN',
                                style: GoogleFonts.roboto(color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Back to Home',
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
