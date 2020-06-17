import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: this.handler,
            child: Text(
              this.text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            onPressed: this.handler,
            child: Text(
              this.text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}
