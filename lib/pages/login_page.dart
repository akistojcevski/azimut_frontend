import 'package:azimut_frontend/components/my_button.dart';
import 'package:azimut_frontend/components/square_tile.dart';
import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
  
    //show loading circle
    showDialog(context: context, builder: (context) {
      return const Center(child: CircularProgressIndicator(),);
    });

    //try sign in
    try {
      
      //sign in
      //AuthAPI _authAPI = AuthAPI();

//      var loginRequest = await _authAPI.login(usernameController.text, passwordController.text);

      //pop the loading circle
      Navigator.pop(context);

      // if(loginRequest.statusCode == 200) {
      //   print(loginRequest.body);
      // } else
      // {
      //   print('Neuspesno!');
      // }
    
    } on Exception {

      //pop the loading circle
      Navigator.pop(context);

      //display error
    }
  }

  //wrong message popup
  void wrongMessage()
  {
    showDialog(context: context, builder: (context) {
      return const AlertDialog(title: Text("Wrong message"),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 50),
          
              //logo
              const Icon(Icons.lock, size: 100),
                   
              const SizedBox(height: 50),
            
              //welcome back, you've been missed
              Text('Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16
                )),
          
              const SizedBox(height: 25),
          
              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
          
              
              const SizedBox(height: 10),
          
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              
              
              const SizedBox(height: 10),
          
              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey[600])
                    ),
                  ],
                ),
              ),
          
              
              const SizedBox(height: 25),
            
              //sign in button
              MyButton(onTap: signUserIn),
          
              
              const SizedBox(height: 50),
          
              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700])),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
          
              
              const SizedBox(height: 50),
          
              //google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.png'),
          
                  SizedBox(width: 25),
          
                  //apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),
          
            
              const SizedBox(height: 50),
          
              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                  style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(width: 4),
                  const Text('Register now', 
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                ],
              )
              ],
            ),
          ),
        ),
      )
    );
  }
}