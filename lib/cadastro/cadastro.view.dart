import 'package:firebase/cadastro/widgets/confirmarsenha.widget.dart';
import 'package:firebase/cadastro/widgets/login.widget.dart';
import 'package:firebase/cadastro/widgets/nameField.widget.dart';
import 'package:firebase/cadastro/widgets/password.widget.dart';

import 'package:flutter/material.dart';

class CadastroView extends StatefulWidget {
  const CadastroView ({super.key});

  @override
  State<CadastroView> createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cadastro de Dados',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Color.fromRGBO(1, 28, 105, 0.9),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        
        
      ),
  
      body: _body(),
      
      
      
    );
  }

  _body() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
      children: const [
       
        SizedBox(height: 160),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25), 
          child: NomeField(),
        ),
        SizedBox(height: 10),
        
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25), 
          child: Password(),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25), 
          child: ValidaSenha(),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100), 
          child: Login(),
        ),
       
     
       
        SizedBox(height: 10),
       
      ],
      
    );
    
  }
}