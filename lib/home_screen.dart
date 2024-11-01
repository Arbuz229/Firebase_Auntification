import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'success_screen.dart';
import 'registration_success_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

Future<void> _register() async {
    try {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegistrationSuccessScreen()),
      );
    } catch (e) {
      print(e.toString());
    }
  }


Future<void> _signIn() async {
    try {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SuccessScreen()),
      );
    } catch (e) {
      print(e.toString());
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Auth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: const Text("Зарегистрироваться"),
            ),
            ElevatedButton(
              onPressed: _signIn,
              child: const Text("Войти"),
            ),
          ],
        ),
      ),
    );
  }
}
