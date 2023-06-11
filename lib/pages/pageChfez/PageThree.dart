
import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/pageChfez/MyCarousel.dart';


class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          SizedBox(width: 10,),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("data"),
              IconButton(
                icon: Icon(Icons.arrow_circle_down),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        child: Center(
                          child: Text('This is a bottom sheet'),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 10,),
      TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    hintText: 'Enter your text here',
    suffixIcon: Icon(Icons.search),
  ),
),

      SizedBox(height: 10,),
       MyCarousel()

    ],
    
  ),
);

    
  }
}
