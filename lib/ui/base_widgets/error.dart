import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final String error;

  const AppErrorWidget({Key key, this.error}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Error occurred: $error",
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      )),
    );
  }
}
