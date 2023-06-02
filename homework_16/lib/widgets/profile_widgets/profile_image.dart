import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: const Align(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50,
          child: Image(
              image: NetworkImage(
                  "https://cdn.salla.sa/nGPyn/3D9ViaEUWLISuOoioYiUhnnya9Nhj331usdEDsRQ.png")),
        ),
      ),
    );
  }
}
