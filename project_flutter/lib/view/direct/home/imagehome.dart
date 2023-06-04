import 'package:flutter/material.dart';

class imagehome extends StatelessWidget {
  const imagehome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSxiB4cUQOcbUc6WnaSNijwmLoIkqHijqUU_48EGFAtbnSx0k9-',
                        width: 170.0,
                        height: 170.0),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'New chairs',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_VDwkGgLUKx4g4T-B0BGC4Psg_gs_rNE3HJlmOdaGlzBQOrpd',
                        width: 170.0,
                        height: 170.0),
                  )),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'New Table',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
