
import 'package:flutter/material.dart';

class ImageThreePageThree extends StatelessWidget {
  const ImageThreePageThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Container(
          alignment: Alignment.center,
          child: Image.network(
            "https://s3-alpha-sig.figma.com/img/5c0f/7836/5aaea2cec55391cc915f8f0db48783f3?Expires=1686528000&Signature=MwdxMYuz1MDNTX9ty6zpZgyEZmkI~eQBvF11ynB6nXEFand8ckwSvUh08nV1X7uWWEfGS5dFhhISXhp37U0mBAvFK9OlI-i3ZXA3lkmEhAwZesVHDqh87r47Czyl4EQKQKK4yUHvKazWc6pl8WBFsR-ogRbh91QPG8Ve8X~Ys6~QeDHyem0m7S9xicJDG5iTtxC3fdysf8mhLR10~4dJEHuBQT62B4CB03lKhHb2z8~28MYQGPZhSgVnIe7eNAf0DMqdVTARt2vWZnYEAMsfc0KB80kHgdZ6tLodF14V3wqTvkh8f7C84zk46pC-jEzKNf8BkVts55Q-RuSA7glN0Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
            height: 353,
            width: 271,
          ),
        ),
      ],
    );
  }
}