import 'package:flutter/material.dart';

class ValidaSenha extends StatelessWidget {
  const ValidaSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        
        hintText: 'Confirme a senha:',
        enabled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}