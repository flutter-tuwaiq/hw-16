import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class saginInF_G extends StatelessWidget {
  const saginInF_G({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
  return Column(
  children: <Widget>[
    Container(
      color: Color.fromARGB(255, 250, 189, 184),
      height: 230,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(height: 200,
              alignment: Alignment.center,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    
                      Image.network(
                        'https://cdn3.iconfinder.com/data/icons/free-social-icons/67/facebook_circle_color-512.png',
                        width: 40 ),
                         Text(
                        'Continue with Googie',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon:
                            Icon(Icons.arrow_forward, color: Colors.black),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png',
                        width: 40,),
                         Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon:
                            Icon(Icons.arrow_forward, color: Colors.black),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
   
                      ],
    );
                  
                
              
            
          
        
      
    
  



    
  }
}