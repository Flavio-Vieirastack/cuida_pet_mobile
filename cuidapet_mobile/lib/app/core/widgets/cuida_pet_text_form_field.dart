import 'package:flutter/material.dart';

class CuidaPetTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? textEditingController;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final IconButton? sufixIcon;
  final ValueNotifier<bool> _obscureTextVN;

  CuidaPetTextFormField(
      {Key? key,
      required this.label,
      this.textEditingController,
      this.validator,
      this.obscureText = false,
      this.sufixIcon})
      : _obscureTextVN = ValueNotifier<bool>(obscureText),
      assert(obscureText == true ? sufixIcon == null : true, 'ObscureText não pode ser adicionado junto com o sufix icon'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextVN,
      builder: (_, obscuretextValue, child) {
        return TextFormField(
          controller: textEditingController,
          validator: validator,
          obscureText: obscuretextValue,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), gapPadding: 0),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 0,
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            suffixIcon: obscureText
                ? IconButton(
                    onPressed: () {
                      _obscureTextVN.value = !obscuretextValue;
                    },
                    icon: Icon(obscuretextValue ? Icons.lock : Icons.lock_open),
                  )
                : sufixIcon,
          ),
        );
      },
    );
  }
}
