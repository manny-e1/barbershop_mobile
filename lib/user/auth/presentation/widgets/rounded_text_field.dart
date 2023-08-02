import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String text)? onChange;
  final TextInputType inputType;
  final List<TextInputFormatter>? formatters;
  final String? labelText, errorText;
  final bool? obsecureText;
  final Icon icon;

  const RoundedTextField(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.inputType,
       this.errorText,
       this.onChange,
      this.obsecureText,
      this.formatters,required this.icon,})
      : super(key: key);

  factory RoundedTextField.email({
    required TextEditingController controller,
    required Function(String text) onChange,
    required String labelText,
     String? errorText,
  }) =>
      RoundedTextField(
          controller: controller,
          onChange: onChange,
          labelText: labelText,
          errorText: errorText,
          inputType: TextInputType.emailAddress, icon: const Icon(Icons.email),
          );

  factory RoundedTextField.name({
    required TextEditingController controller,
    required Function(String text) onChange,
    required String labelText,
     String? errorText,
  }) =>
      RoundedTextField(
          controller: controller,
          onChange: onChange,
          labelText: labelText,
          errorText: errorText,
          inputType: TextInputType.name,
          icon: const Icon(Icons.person)
          );

  factory RoundedTextField.password({
    required TextEditingController controller,
    required String labelText,
     Function(String text)? onChange,
     String? errorText,

  }) =>
      RoundedTextField(
          controller: controller,
          labelText: labelText,
          onChange: onChange,
          errorText: errorText,
          obsecureText: true,
          inputType: TextInputType.text,
          icon: const Icon(Icons.vpn_key),);

  factory RoundedTextField.phoneNumber({
    required TextEditingController controller,
    required Function(String text) onChange,
    required String labelText,
     String? errorText,
  }) =>
      RoundedTextField(
        controller: controller,
        onChange: onChange,
        labelText: labelText,
        errorText: errorText,
        inputType: const TextInputType.numberWithOptions(decimal: false),
        formatters: [FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$'))],
        icon: const Icon(Icons.phone),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        
        controller: controller,
        decoration: InputDecoration(
          errorText: errorText,
          labelText: labelText,
          errorMaxLines: 2,
          prefixIcon: icon,
          
          border: OutlineInputBorder(borderRadius:  BorderRadius.circular(10),),
        ),
        onChanged: onChange ?? (val){},
        obscureText: obsecureText ?? false,
        keyboardType: inputType,
        inputFormatters: formatters ?? const <TextInputFormatter>[],
      ),
    );
  }
}
