import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:keishadow_blog/CustomCard/CustomCard.dart';

class LinkList extends StatelessWidget {
  const LinkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(10.0),
      children: [
        CustomLinkCard(
            icon: Icon(Feather.github),
            text: 'GitHub profile',
            link: 'https://github.com/KeiShadow'),
        CustomLinkCard(
            icon: Icon(Feather.linkedin),
            text: 'LinkedIn profile',
            link: 'https://www.linkedin.com/in/petr-noga-5a6aa6124/'),
        CustomLinkCard(
            icon: Icon(Feather.twitter),
            text: "I'm on Twitter!",
            link: 'https://twitter.com/PetrNoga'),
      ],
    );
  }
}
