import 'package:cep_contacts/core/configs/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.mainTheme,
      home: Scaffold(
        body: Center(
          child: Text(
            'À noite',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
//phloretin e morin
