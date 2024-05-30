import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

//sign user out method
void signUserOut() {
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))],),
      body: const Center(child: Text("LOGGED IN"))
    );
  }
}