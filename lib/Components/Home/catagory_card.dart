import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
      super.key,
      required this.imgPath,
      required this.title
    });

  final String imgPath;
  final String title;

  @override
  State<MenuWidget> createState() => _MenuWidget();
}

class _MenuWidget extends State<MenuWidget> {
  

  @override
  Widget build(BuildContext context) {
    return  Container(
            // color: Colors.amber,
            // height: 600,
            
            child: Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
          
              child: Column(
                children: [
                  Container(

                    child: Column(
                      children: [
                       Container(
                        // color: const Color.fromARGB(255, 0, 105, 190),
                        child:  Padding(
                          padding: EdgeInsets.all(0),
                          
                          child: ClipRRect(

                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                              size: Size.fromHeight(130),
                              child:  Stack(
                                fit: StackFit.expand,
                                children:  [
                                  Container(
                                  child: Image.network(widget.imgPath,
                                  fit: BoxFit.cover,
                                  color: const Color.fromARGB(255, 176, 173, 173).withOpacity(0.8), colorBlendMode: BlendMode.multiply ,
                                  ),
                                  ),
                                   Positioned(
                                      child: Center(
                                        child: Text(
                                          widget.title,
                                          style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold, 
                                        ),
                                      ),
                                    ),
                                  )
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
            ),
          ),
        );
  }
}