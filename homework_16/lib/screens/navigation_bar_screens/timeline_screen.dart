import 'package:flutter/material.dart';

import '../../widgets/timeline_widgets/app_bar_title.dart';
import '../../widgets/timeline_widgets/cards_list.dart';
import '../../widgets/timeline_widgets/users_list.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(),
      ),
      body: ListView(
        children: const [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: UsersList(),
          ),
          CardsList()
        ],
      ),
    );
  }
}
