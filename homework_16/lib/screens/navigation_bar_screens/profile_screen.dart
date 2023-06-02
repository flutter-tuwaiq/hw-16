import 'package:flutter/material.dart';
import 'package:homework_16/widgets/background_image.dart';
import 'package:homework_16/widgets/profile_widgets/followers.dart';
import '../../widgets/profile_widgets/bar_buttons.dart';
import '../../widgets/profile_widgets/images_background.dart';
import '../../widgets/profile_widgets/images_list.dart';
import '../../widgets/profile_widgets/profile_background.dart';
import '../../widgets/profile_widgets/profile_buttons.dart';
import '../../widgets/profile_widgets/profile_image.dart';
import '../../widgets/profile_widgets/profile_info.dart';
import '../../widgets/profile_widgets/sort.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          BarButtons(),
          ProfileBackground(
            child: Column(
              children: [
                Followers(),
                ProfileInfo(),
                ProfileButtons(),
                Sort(),
                ImagesBackground(
                  child: ImagesList(),
                )
              ],
            ),
          ),
          ProfileImage(),
        ],
      ),
    );
  }
}
