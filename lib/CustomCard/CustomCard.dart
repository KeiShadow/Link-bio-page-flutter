import 'dart:html' as html;

import 'package:flutter/material.dart';

class CustomLinkCard extends StatelessWidget {
  final Icon? icon;
  final String? text;
  final String? link;

  const CustomLinkCard({
    Key? key,
    this.icon,
    this.text,
    this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => html.window.open(link!, '_blank'),
      child: Container(
        height: 60,
        margin: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 0.5),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 30),
              child: Container(
                width: 45,
                child: icon!,
              ),
            ),
            Text(
              text!,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
