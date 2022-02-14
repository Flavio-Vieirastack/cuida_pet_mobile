import 'package:cuida_pet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuida_pet_mobile/app/core/widgets/cuida_pet_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         SizedBox(
           height: 20.h,
        ),
         CuidaPetTextFormField(
          label: 'Login',
        ),
         SizedBox(
           height: 20.h,
        ),
         CuidaPetTextFormField(
          label: 'Senha',
          obscureText: true,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Entrar'),
          ),
        )
      ],
    );
  }
}
