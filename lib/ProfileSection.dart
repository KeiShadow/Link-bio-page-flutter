import 'package:flutter/material.dart';

class ProfileSection extends StatefulWidget {
  ProfileSection({Key? key}) : super(key: key);

  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0.01,
                blurRadius: 10,
                offset: Offset(0, 0.4),
              )
            ], borderRadius: BorderRadius.circular(100.0)),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset('profile_photo.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 10),
            child: Text(
              '@petr_noga',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Wrap(
            direction: Axis.vertical, // make sure to set this
            spacing: 10, // set your spacing

            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Text(
                'This is my linkbio website created by Flutter',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'All my official links are here!',
                style: TextStyle(fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
