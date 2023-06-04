import 'package:flutter/material.dart';
import 'package:project_flutter/view/direct/Furniture/card_f.dart';
import 'package:project_flutter/view/direct/Shop/shop.dart';
import 'package:project_flutter/view/direct/sofa/sofa.dart';

class Furniture extends StatelessWidget {
  const Furniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            InkWell(
              child: Card_f(
                name: ' Table',
                items: 77,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return sofa();
                    },
                  ),
                );
              },
            ),

            Card_f(
              name: ' sofa',
              items: 77,
            ),
            Card_f(
              name: 'Table',
              items: 77,
            ),
            Card_f(
              name: 'Table',
              items: 77,
            ),

            /*
            Column(
              children: [
              
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return shop();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Categories",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Furniture",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 10,
                ),
      
                Container(
                  height: 39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.grey[500]?.withOpacity(0.3),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 28,
                      ),
                      fillColor: Colors.green,
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                ),
              ],
            ),*/
            //-------------

            /*
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ListView(
                //  children:const [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                              width: 170.0,
                              height: 170.0),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'New chairs',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '77 Items',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                              width: 170.0,
                              height: 170.0),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'New chairs',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '77 Items',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 20,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                              width: 170.0,
                              height: 170.0),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'New chairs',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '77 Items',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                              width: 170.0,
                              height: 170.0),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'New chairs',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '77 Items',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
