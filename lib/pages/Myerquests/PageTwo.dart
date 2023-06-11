import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 238, 238),
        body: Column(
          children: [
            TabBar(labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'طالباتي',
                ),
                Tab(
                  text: 'الحجوزات',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
      
                           backgroundColor: const Color.fromARGB(255, 61, 3, 71),
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                           )
                        
                          ),
                          child: Text('القادمه'),
                        ),
                      ),
                     SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 61, 3, 71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                           )
                          ),
                          child: Text('السابقة'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 61, 3, 71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                           )
                          ),
                          child: Text('القادمة'),
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style:ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 61, 3, 71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                           )
                          ) ,
                          child: Text('السابقة'),
                        ),
                      ),
                    ],
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