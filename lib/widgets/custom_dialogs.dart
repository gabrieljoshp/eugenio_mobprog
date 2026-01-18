import 'package:flutter/material.dart';
import '../constants.dart';

Future<void> customDialog(
  BuildContext context, {
  required String title,
  required String content,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap Okay
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: FB_DARK_PRIMARY,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop(); // completes the Future
            },
            child: const Text('Okay'),
          ),
        ],
      );
    },
  );
}
