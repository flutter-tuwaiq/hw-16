import 'package:flutter/material.dart';

class PasswordLapel extends StatelessWidget {
  const PasswordLapel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: 332,
              child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Passworsd',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.lock_outline_rounded,color: Color.fromARGB(255, 17, 16, 16),size: 24,),
                suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,)
              ),
              ),
            );
  }
}