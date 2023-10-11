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
          title: const Text('Cadastro no Firebase'),
        ),
        body: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: emailController,
              decoration:const InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
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
      print('Dados enviados com sucesso');
      nameController.clear();
      emailController.clear();
    }).catchError((error) {
      print('Erro ao enviar dados: $error');
    });
  }
}
