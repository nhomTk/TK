import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hello_word/home/Food_page_body.dart';
import 'package:hello_word/utlis/colors.dart';
import 'package:hello_word/widgets/big_text.dart';
import 'package:hello_word/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "tuan", color: AppColors.mainColor),
                    Row(
                      children: [
                        SmallText(
                            text: "nguyen khanh tuan", color: Colors.black45),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.search, color: Colors.white),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ),
        FoodPageBody(),
      ],
    ));
  }
}
