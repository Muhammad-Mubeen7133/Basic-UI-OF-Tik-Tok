import 'package:flutter/material.dart';
import 'package:ludo/Tik_tok_main/stack_fun.dart';

mybottom_bar(BuildContext context ) {
  return Container(
    height: 70,
    color: Colors.blue,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(
              Icons.home,
            ),
            Text('Home'),
          ],
        ),
        stack_fun(context),
        Column(
          children: [
            Icon(Icons.person),
            Text('User'),
          ],
        ),
      ],
    ),
  );
}
