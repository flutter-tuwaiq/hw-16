import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.myHintText});
  final String myHintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  Color _color = const Color.fromARGB(255, 236, 236, 236);

  // ---------------- on focus change color of textfield
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _color = Colors.white;
        });
      } else {
        setState(() {
          _color = const Color.fromARGB(255, 236, 236, 236);
        });
      }
    });
  }

  // -------------- TextField
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: _color,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(14),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 94, 200, 253), width: 2.0),
        ),
        hintText: widget.myHintText,
      ),
      focusNode: _focusNode,
    );
  }
}
