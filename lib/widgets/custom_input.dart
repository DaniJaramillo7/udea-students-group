import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController inputController;
  final TextInputType? textInputType;
  final String? hintText;

  const CustomInput({
    Key? key,
    required this.inputController,
    this.textInputType,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: textInputType,
      obscureText: textInputType == TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black38,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.only(left: 15.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.3),
        ),
        counterText: '',
      ),
    );
  }
}
