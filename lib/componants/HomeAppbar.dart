import 'package:flutter/material.dart';
import 'package:hw_16/componants/SearchField.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      pinned: true,
      snap: false,
      leading: IconButton(
        icon: Image.asset(
          'assets/List.jpg',
          height: 12,
          width: 16,
        ),
        onPressed: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on,
            color: Colors.red,
            size: 18,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq4QpZB427qT1ZCryLtWnxnInZyUEMRkVwng&usqp=CAU'),
          ),
        ),
      ],
      bottom: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            border: Border.all(
              color: Colors.transparent,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 40,
          child: const Center(
            child: SearchField(),
          ),
        ),
      ),
    );
  }
}

// AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Image.asset('assets/List.jpg'),
      //     onPressed: () {},
      //   ),
      //   // ImageIcon(
      //   //   NetworkImage(
      //   //       'https://www.figma.com/file/TMdcVK3EizKGNRE78YaD0Q/Untitled?type=design&node-id=2-3446&t=SCqMCZDimA20ujf9-4'),
      //   // ),

      //   title: Row(
      //     children: [
      //       const Icon(
      //         Icons.location_on,
      //         color: Colors.red,
      //       ),
      //       Text(
      //         title,
      //         style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
      //       ),
      //     ],
      //   ),
      //   actions: const [
      //     CircleAvatar(
      //       backgroundImage: NetworkImage(
      //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq4QpZB427qT1ZCryLtWnxnInZyUEMRkVwng&usqp=CAU'),
      //     ),

      //   ],
      // ),