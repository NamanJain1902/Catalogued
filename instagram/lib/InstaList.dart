import 'package:flutter/material.dart';
import 'package:instagram/InstaStories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return  new ListView.builder(
        itemCount: 5,
      itemBuilder: (context, index)=> index == 0 ? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height * 0.15,
      ): Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          //1st Row
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0,16.0, 8.0, 16.0),
            child: Row(
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                        "#",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //2nd Row
          Flexible(
            fit: FlexFit.loose,
            child: new Image.network(
              "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
              fit: BoxFit.cover,

            ),
          ),

          //3rd Row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(
                      FontAwesomeIcons.heart,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),

          ),


          //4th Roe
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Liked by namanjain1902, you and 701,921 others",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
         ),

          //5th Row
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0,16.0, 8.0, 16.0),
            child: Row(
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                       hintText: "Add a comment...",
                    ),
                  ),
                )
              ],
            ),
          ),

          //6th Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "1 Day Ago", style: TextStyle(color:  Colors.grey)
            ),
          )
        ],
      ),
    );
  }
}
