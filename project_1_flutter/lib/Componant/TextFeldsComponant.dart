import 'package:flutter/material.dart';

class TextFeldsComponant extends StatelessWidget {
  TextFeldsComponant({
    super.key,
    required this.titie,
    required this.value,
  });
  String? titie = "";
  String? value = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 95,
        width: 327,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titie!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(246, 246, 246, 246)),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18),
                hintText: value!,
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ));
  }
}
