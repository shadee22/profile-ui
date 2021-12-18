import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
// import 'package:lowella/shared/reuse.dart';
// import 'package:spring/spring.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Profile(context) ,
    );
  }
}
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: tranparent,
        elevation: 0.0,
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.w900),),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -350,
            left: -50,
            right: -50,
            child: CircleAvatar(
              radius: 400,
            ),
          ),
          Positioned(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(30, 150, 30, 10),
              child: Column(
                children: [
                  Spring.slide(
                    slideType: SlideType.slide_in_top,
                    withFade: true,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: black,
                            blurRadius: 12.0, // soften the shadow
                            spreadRadius: 1, //extend the shadow
                            offset: Offset(
                              .0, // Move to right 10  horizontally
                              .0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          ListTile(
                            trailing: Icon(Icons.edit),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.gettyimages.com/photos/boxing-legend-mike-tyson-poses-for-a-portrait-in-december-2015-in-los-picture-id1169018459?s=612x612'),
                              radius: 35,
                              backgroundColor: black,
                            ),
                            title: Text(
                              "Mike Tyson",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: black.withOpacity(0.6),
                              ),
                            ),
                          ),
                          spacer,
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "This Week Sales",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Icon(Icons.bar_chart),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "3871",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          spacer,
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: br,
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SizedBox(width: 30),
                                        Icon(
                                          Icons.star_border,
                                          size: 30,
                                          color: white,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Loyality",
                                          style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 5),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: br,
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SizedBox(width: 30),
                                        Icon(
                                          Icons.verified_user,
                                          size: 30,
                                          color: white,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Trust",
                                          style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 5),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Spring.slide(
                    slideType: SlideType.slide_in_left,
                    withFade: true,
                    delay: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: _deco,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            size: 30,
                          ),
                          title: Text(
                            "Personal Details",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Spring.slide(
                    slideType: SlideType.slide_in_right,
                    withFade: true,
                    delay: Duration(seconds : 1),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: _deco,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.settings_outlined,
                            size: 30,
                          ),
                          title: Text(
                            "General Settings",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text("Last Sell Products",style : TextStyle(fontSize: 15)),
                  SizedBox(height: 10),
                  Spring.fadeIn(
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var i = 0; i < images.length; i++)
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(images[i])),
                                border: Border.all(),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


final _deco = BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: white,
  boxShadow: [
    BoxShadow(
      color: black,
      blurRadius: 12.0, // soften the shadow
      spreadRadius: 1, //extend the shadow
      offset: Offset(
        .0, // Move to right 10  horizontally
        .0, // Move to bottom 10 Vertically
      ),
    )
  ],
);


List<String> images = [
  'https://i.pcmag.com/imagery/reviews/07GmIupznWhAzDQ3Z7li99a-1.fit_lim.size_625x365.v1632849626.jpg',
  'https://i.insider.com/60117b551d2df20018b71117?width=1136&format=jpeg',
  'https://cdn.mos.cms.futurecdn.net/yDe48mPiqy27ZngYUHUvdR.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oHTjqPIbKXuvtWuLLNXzugIxZotdwFX6eg&usqp=CAU',
  'https://cdn57.androidauthority.net/wp-content/uploads/2021/01/Samsung-Galaxy-S21-Ultra-vs-Samsung-Galaxy-Note-20-Ultra-1-scaled.jpg',
  'https://aitechmobiles.com/wp-content/uploads/2021/02/samsung-galaxy-m01s-500x500-1.jpg',
  'https://i.pcmag.com/imagery/reviews/07GmIupznWhAzDQ3Z7li99a-1.fit_lim.size_625x365.v1632849626.jpg',
  'https://i.insider.com/60117b551d2df20018b71117?width=1136&format=jpeg',
  'https://cdn.mos.cms.futurecdn.net/yDe48mPiqy27ZngYUHUvdR.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oHTjqPIbKXuvtWuLLNXzugIxZotdwFX6eg&usqp=CAU',
  'https://cdn57.androidauthority.net/wp-content/uploads/2021/01/Samsung-Galaxy-S21-Ultra-vs-Samsung-Galaxy-Note-20-Ultra-1-scaled.jpg',
  'https://aitechmobiles.com/wp-content/uploads/2021/02/samsung-galaxy-m01s-500x500-1.jpg',
  'https://i.pcmag.com/imagery/reviews/07GmIupznWhAzDQ3Z7li99a-1.fit_lim.size_625x365.v1632849626.jpg',
  'https://i.insider.com/60117b551d2df20018b71117?width=1136&format=jpeg',
  'https://cdn.mos.cms.futurecdn.net/yDe48mPiqy27ZngYUHUvdR.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oHTjqPIbKXuvtWuLLNXzugIxZotdwFX6eg&usqp=CAU',
  'https://cdn57.androidauthority.net/wp-content/uploads/2021/01/Samsung-Galaxy-S21-Ultra-vs-Samsung-Galaxy-Note-20-Ultra-1-scaled.jpg',
  'https://aitechmobiles.com/wp-content/uploads/2021/02/samsung-galaxy-m01s-500x500-1.jpg',
  'https://i.pcmag.com/imagery/reviews/07GmIupznWhAzDQ3Z7li99a-1.fit_lim.size_625x365.v1632849626.jpg',
  'https://i.insider.com/60117b551d2df20018b71117?width=1136&format=jpeg',
  'https://cdn.mos.cms.futurecdn.net/yDe48mPiqy27ZngYUHUvdR.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oHTjqPIbKXuvtWuLLNXzugIxZotdwFX6eg&usqp=CAU',
  'https://cdn57.androidauthority.net/wp-content/uploads/2021/01/Samsung-Galaxy-S21-Ultra-vs-Samsung-Galaxy-Note-20-Ultra-1-scaled.jpg',
  'https://aitechmobiles.com/wp-content/uploads/2021/02/samsung-galaxy-m01s-500x500-1.jpg',
];
