

import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Row( 
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Padding(
           padding: const EdgeInsets.all(10),
           child: Icon(Icons.settings, color:  Color.fromARGB(255, 247, 156, 28)),
         ),
        SizedBox(width: 10),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("حسابي",
             style: TextStyle(color: Color.fromARGB(255, 55, 2, 64)), textAlign: TextAlign.right,),
           ),

      ],
    ),
    SizedBox(height: 10,),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("اهلابك",style: TextStyle(color: Color.fromARGB(255, 247, 156, 28))),
    ),
    SizedBox(height: 10,),
    Row( mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text("arwa", textAlign: TextAlign.right,),
      SizedBox(width: 10),
      Icon(Icons.edit, color: Color.fromARGB(255, 39, 3, 81)),
    ],),
    SizedBox(height: 10,),
    Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    InkWell(
      onTap: (){},
      child: Container(
        height: 100,
        width: 200,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("imags/pic2.png", height: 40, width: 40),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("المحفظه",
               style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" ريال100.0",style: TextStyle(color: Color.fromARGB(255, 55, 2, 64))),
            ],)
          ],
          
        ),
      ),
    ),
    InkWell(
      onTap: (){}, // العملية المراد القيام بها عند الضغط على الكونتينر
      child: Container(
        height: 100,
        width: 200,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("imags/pic2.png", height: 40, width: 40),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("نقاطك",
               style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" 0",style: TextStyle(color: Color.fromARGB(255, 55, 2, 64))),
            ],)
          ],
        ),
      ),
    ),
  ],
),

   
    SizedBox(height: 10,),
     Column(
  children: [
    SizedBox(height: 40,),
    InkWell(
      onTap: (){}, // العملية المراد القيام بها عند الضغط على المحفظة
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
     Icon(Icons.arrow_back,color: Colors.grey,size: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("المحفظة"),
              SizedBox(width: 20),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.account_balance_wallet,color: Colors.grey,),
           ),
           
            ],
          ),
        ],
      ),

    ),
    Divider(),
    InkWell(
      onTap: (){},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
     Icon(Icons.arrow_back,color: Colors.grey,size: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
               SizedBox(width: 30),
     Text("مفضلتي",),
           SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_border,color: Colors.grey,),
              ),
            ],
          ),
        ],
      ),
    ),
  ], 
),
Divider(endIndent: 10,indent: 10,),
    InkWell(
      onTap: (){},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
     Icon(Icons.arrow_back,color: Colors.grey,size: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
               SizedBox(width: 30),
     Text("تواصل معنا",),
           SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.phone,color: Colors.grey,),
              ),
            ],
          ),
        ],
      ),
    ),
    Divider(endIndent: 10,indent: 10,),
    InkWell(
      onTap: (){},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
     Icon(Icons.arrow_back,color: Colors.grey,size: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
               SizedBox(width: 30),
     Text("شارك التطبيق ",),
           SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.share,color: Colors.grey,),
              ),
            ],
          ),
        ],
      ),
    ),
    Divider(endIndent: 10,indent: 10,),
    InkWell(
      onTap: (){},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
     Icon(Icons.arrow_back,color: Colors.grey,size: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
               SizedBox(width: 30),
     Text("الاسئلة الاكثر شيوعا",),
           SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.quiz_sharp,color: Colors.grey,),
              ),
            ],
          ),
        ],
      ),
    ),
  ],

);
   
  }
}