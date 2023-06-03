import 'package:flutter/material.dart';

class ImageTwoPageTwo extends StatelessWidget {
  const ImageTwoPageTwo({
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
            "https://s3-alpha-sig.figma.com/img/e080/efb9/e3a354b661e1513cbd270b903a2ff11f?Expires=1686528000&Signature=gr6hXG3tJ7u1sPHk7fH1L1c2lboMcpOsdER-FBozIHZGfn9em-LzLxFV2qY8XVZvOOMswJeXeeXvILAUPUMoyq~mNj8t9ROw048bmQsjSI5ksD1NrEQw3uQRkuXHcNSFSYhDrgn4lk8z~UOI5KtxOuzjR7mvnkcgTJ8ost0r2o97HZi2UuatIdQH3O2yHA5ywwiXozuwAnUJtpeMFXzBlcCOJG3zdL7jrTblpA7fdxq~YKtNA7QJ5xoB3FwMlD7XHy3ckU7flkUGuOQxqkssGP-Dts-RPTQGTJA3J08NJmxycSADkaFQ-alB5YgT6Y63Jl1HWAbwI7UxKuZ0zjMjaw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
            height: 353,
            width: 271,
          ),
        ),
      ],
    );
  }
}

