import 'package:flutter/material.dart';
import '../Components/Home/app_bar.dart';
import '../Components/Home/catagory_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         body: ListView(
          children: [
             const AppBarCustom(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white , elevation: 0),
              onPressed: () {
                Navigator.of(context).pushNamed("/MainDishes");
              },
              child:  const MenuWidget(imgPath:
                    'https://www.thespruceeats.com/thmb/NKrzAkVokEycHnVDEX6vi8Hg3RQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/creamy-tomato-pasta-481963-Hero-5b6afcf6c9e77c0050e73162.jpg',
                      title: 'Main Dishes',),
            ),
            
             ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white , elevation: 0),
              onPressed: () {
                Navigator.of(context).pushNamed("/Fastfood");
              },
               child:const MenuWidget(imgPath:
            'https://foodtolive.com/healthy-blog/wp-content/uploads/sites/3/2017/11/Fast-Food-and-Junk-Food-4-1.jpg',
             title: 'Fast Food',),
             ),



              ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white , elevation: 0),
              onPressed: () {
                Navigator.of(context).pushNamed("/Salad");
              },
               child:const MenuWidget(imgPath:
            'https://www.stockland.com.au/~/media/shopping-centre/common/campaigns/a-to-z-of-mmmm/jamies-hub-page/social-share-images/interesting-salad--social-share_lr.jpg',
             title: 'Salad',),
             ),



             ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white , elevation: 0),
              onPressed: () {
                Navigator.of(context).pushNamed("/Salad");
              },
               child:const MenuWidget(imgPath:
            'https://uploads-ssl.webflow.com/628ee8cd8f04ca5405cebd16/62e0940181fd3cade1fd058a_Strawberry%20growing%201200.jpg',
             title: 'Fruit',),
             ),
          ],
        ),
          bottomNavigationBar: Theme(
           data: Theme.of(context).copyWith(
           canvasColor: Colors.red,
        ),

         child: Container(

           child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
             items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outline,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  label: ""),
         
         
         
         
              
             
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  label: "",
                  
                  ),
         
         
         
         
         
         
         
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat, color: Color.fromARGB(255, 255, 255, 255)),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  label: ""),
            ],
               ),
         ),
          
        ),





        
  );
       
  }
}



  // BottomNavigationBar(
              
          
  //         currentIndex: currentIndex,
  //         onTap: (index) {
            
  //           currentIndex = index;
  //           setState(() {});
  //         },
  //        
