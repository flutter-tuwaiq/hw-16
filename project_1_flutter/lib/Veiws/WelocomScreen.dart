import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_1_flutter/Componant/WelocomComponant.dart';
import 'package:project_1_flutter/Extantions/extantion.dart';
import 'package:project_1_flutter/Veiws/SingUpScreen.dart';

class WelocomScreen extends StatelessWidget {
  const WelocomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background_project_1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: WelocomComponant(),
          )),
    );
  }
}
