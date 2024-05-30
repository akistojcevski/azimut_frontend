import 'package:azimut_frontend/pages/home_page.dart';
import 'package:azimut_frontend/pages/login_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: (context, snapshot) {
          if(snapshot.hasData) //user is logged in 
          {
            return const HomePage();
          }
          else { //user is NOT logged in
            return const LoginPage();
          }
        }, stream: null,
      ),
    );
  }
}