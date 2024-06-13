import 'package:flutter/material.dart';

stack_fun(BuildContext context) {
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: Container(
        // height: 50,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.4,

        // width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.red],
            // stops: [0.05, 0.7, 1], // Adjust stops to make black occupy more space
          ),
        ),
        child: Center(
          child: Container(
            // height: 50,
            height: MediaQuery.of(context).size.height * 0.1,

            // width: 90,
            width: MediaQuery.of(context).size.width * 0.37,

            color: Colors.white,
            child: Icon(Icons.add),
          ),
        ),
      ),
    ),
  );
}
