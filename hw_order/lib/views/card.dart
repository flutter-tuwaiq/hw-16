import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/debit_card_information.dart';
import '../extensions/next_page.dart';
import '../models/colors.dart';
import '../views/check_out.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ListOfColors.white,
          title: const Text(
            'Credit/ Debit Card',
            style: TextStyle(
                color: ListOfColors.boldBlack,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                FontAwesomeIcons.circlePlus,
                color: ListOfColors.red,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const DebitCardInformation(),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(245),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        backgroundColor: ListOfColors.red),
                    onPressed: (() {
                      context.nextPage(const CheckOut());
                    }),
                    child: const Text('Use this card')),
                const SizedBox(
                  width: 16,
                ),
                const Icon(
                  FontAwesomeIcons.trash,
                  color: ListOfColors.lightGrey,
                )
              ],
            )
          ],
        ));
  }
}
