import 'package:flutter/material.dart';

class EmailLapel extends StatelessWidget {
  const EmailLapel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 332,
            child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Email address',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.email_outlined,color: Color.fromARGB(255, 17, 16, 16),),
              
            ),
            ),
          );
  }
}