import 'package:flutter/material.dart';
import 'package:hw_order/models/colors.dart';

class TextFieldCardInformation {
  static const SizedBox fullnameCard = SizedBox(
    width: 341,
    height: 46,
    child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ListOfColors.lightGrey),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            hintText: 'Paul adefarasin',
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ListOfColors.boldBlack))),
  );
  static const SizedBox cardNumber = SizedBox(
    width: 341,
    height: 46,
    child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ListOfColors.lightGrey),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            hintText: '0000  -0000 - 0000 - 0000',
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ListOfColors.boldBlack))),
  );
  static const SizedBox expiryDate = SizedBox(
    width: 154,
    height: 46,
    child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ListOfColors.lightGrey),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            hintText: '20/24',
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ListOfColors.boldBlack))),
  );
  static const SizedBox cvc = SizedBox(
    width: 154,
    height: 46,
    child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ListOfColors.lightGrey),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            hintText: '555',
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ListOfColors.boldBlack))),
  );
  static const TextStyle title =
      TextStyle(fontWeight: FontWeight.w400, color: ListOfColors.boldBlack);
}
