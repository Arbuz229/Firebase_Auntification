import 'package:flutter/material.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация успешна'),
      ),
      body: Center(
        child: Text(
          'Пользователь зарегистрирован',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
