import 'package:flutter/material.dart';
import 'package:tester_app/localization/l10n.dart';

class AppErrorWidget extends StatelessWidget {
  final String error;

  const AppErrorWidget({Key? key, required this.error}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context).errorOccurred(error),
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      )),
    );
  }
}
