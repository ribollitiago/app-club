import 'package:auth_sql/components/auth/textfield_confirm_password.dart';
import 'package:auth_sql/components/auth/textfield_email.dart';
import 'package:auth_sql/components/auth/textfield_password.dart';
import 'package:auth_sql/screens/login.dart';
import 'package:auth_sql/store/auth.store.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final confirmPassword = TextEditingController();

  bool isVisible = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AuthStore>(context);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ListTile(
                    title: Text(
                      "Registrar Nova Conta",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),

                  //Email field
                  TextFieldEmail(
                    email: _emailController.text,
                  ),

                  //Senha field
                  TextFieldPassword(
                    password: _passwordController.text
                  ),

                  //Confirmar Senha field
                  TextFieldConfirmPassword(
                      confirmPassword: confirmPassword.text
                  ),

                  //Botão Registrar field

                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple),
                    child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            store.signUpWithEmailPassword(
                                _emailController.text,
                                _passwordController.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          }
                        },
                        child: const Text(
                          "CADASTRAR",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  //Log In Text Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Já possui conta?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text("Clique aqui")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}