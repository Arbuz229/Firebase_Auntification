import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добро пожаловать'),
      ),
      body: const Center(
        child: Text(
          'Пользователь вошел',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
