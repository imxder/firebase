import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  
  
  EmailField({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const TextField(   
      
      decoration: InputDecoration(
          hintText: 'Email:',
          enabled: true,
          border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 204, 218, 229),
          ),
        ),
      ),
    );
  }
}