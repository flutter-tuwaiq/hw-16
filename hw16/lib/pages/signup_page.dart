import 'package:flutter/material.dart';
import 'package:hw16/components/app_bar.dart';
import 'package:hw16/components/button.dart';
import 'package:hw16/components/email_label.dart';
import 'package:hw16/components/password_label.dart';
import 'package:hw16/pages/signin_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
            padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
            child: Text(
              'Sign up',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
          ),
           const Padding(
              padding: EdgeInsets.fromLTRB(30, 18, 0, 0),
              child: Text(
                'Create an account here',
                style: TextStyle(
                    fontSize: 16, color: Colors.grey, fontFamily: 'Poppins'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 28, 0, 0),
              child: SizedBox(
              width: 332,
              child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Create an account here',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.person_outlined,color: Color.fromARGB(255, 17, 16, 16),),
              ),
              ),
                      ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 28, 0, 0),
            child: SizedBox(
              width: 332,
              child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Mobile Number',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.phone_android_rounded,color: Color.fromARGB(255, 17, 16, 16),),
                
              ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
            child: EmailLapel(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
            child: PasswordLapel(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 28, 0, 0),
            child: Text('By signing up you agree with our Terms of Use',style: TextStyle(color:Color.fromARGB(255, 37, 80, 107) ),),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(300, 48, 0, 0),
            child: Button(pageName: SigninPage()),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 42, 0, 0),
            child: Row(
                  children: [
                  const Text('Already a member?',style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SigninPage();
                        },
                      ),
                    );
                  }, 
                  child: const Text("Sign in",style: TextStyle(color: Color.fromARGB(242, 37, 80, 107),),)),
                ],),
          )
            ],
          )
        ],
      ),
    );
  }
}