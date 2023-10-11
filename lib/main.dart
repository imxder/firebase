import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro no Firebase'),
        ),
        body: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: emailController,
              decoration:const InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
                // Chame uma função para enviar os dados para o Firebase
                cadastrarNoFirebase();
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }

  void cadastrarNoFirebase() {
    final nome = nameController.text;
    final email = emailController.text;

    FirebaseFirestore.instance.collection('usuarios').add({
      'nome': nome,
      'email': email,
    }).then((value) {
      // Dados enviados com sucesso
      print('Dados enviados com sucesso');
      // Limpe os campos de texto após o cadastro
      nameController.clear();
      emailController.clear();
    }).catchError((error) {
      // Lida com erros de envio de dados
      print('Erro ao enviar dados: $error');
    });
  }
}
