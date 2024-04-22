import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immoplus/screens/pages/home/views/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('images/houselogin.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.8,
                ),
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 16,
                        spreadRadius: 16,
                        color: Colors.black.withOpacity(0.3))
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.3))),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Form(
                            child: Column(
                              children: [
                                const Text('Connexion'),
                                const SizedBox(height: 20),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(),
                                  ),
                                  obscureText: true,
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Get.to(()=> (const HomeView()));
                                  },
                                  child: const Text('Connexion'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
