import 'dart:ui';

import 'package:ecoursedashboard/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          color: Colors.white.withOpacity(0.1),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: _width * 0.05,
              vertical: _width * 0.025,
            ),
            height: _width * 0.6,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff4f5fc),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_width * 0.03),
                          bottomLeft: Radius.circular(_width * 0.03),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                                height: _width * 0.03,
                                width: _width * 0.03,
                              ),
                              SizedBox(width: _width * 0.01),
                              Text(
                                "Ohara",
                                style: GoogleFonts.mukta(
                                  fontSize: _width * 0.018,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Button(text: "Join A Course"),
                          MenuItem(
                              icon: Icons.dashboard,
                              title: "Dashboard",
                              isSelected: false),
                          MenuItem(
                              icon: Icons.apps,
                              title: "All Courses",
                              isSelected: true),
                          MenuItem(
                              icon: Icons.folder_open_rounded,
                              title: "Resources",
                              isSelected: false),
                          MenuItem(
                              icon: Icons.android,
                              title: "Friends",
                              isSelected: false),
                          MenuItem(
                              icon: Icons.chat_bubble_outline_rounded,
                              title: "Chats",
                              isSelected: false),
                          MenuItem(
                              icon: Icons.settings,
                              title: "Settings",
                              isSelected: false),
                          Container(
                            child: Image.asset(
                              "assets/images/folder.png",
                              height: _width * 0.05,
                              width: _width * 0.05,
                            ),
                          ),
                          Button(
                            text: "Upgrade",
                          ),
                        ],
                      )),
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.03,
                        vertical: _width * 0.02,
                      ),
                      color: Color(0xfff4f5fc).withOpacity(0.8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: _width * 0.035,
                                  width: _width * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      _width * 0.008,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: _width * 0.005,
                                      ),
                                      Icon(
                                        Icons.search,
                                        size: _width * 0.015,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: _width * 0.003,
                                      ),
                                      Text(
                                        "Search",
                                        style: GoogleFonts.mukta(
                                          color: Colors.grey,
                                          fontSize: _width * 0.012,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  )),
                              Spacer(),
                              Icon(
                                Icons.notifications,
                                size: _width * 0.025,
                                color: themeColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "All Courses",
                                style: GoogleFonts.mukta(
                                  fontSize: _width * 0.02,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "Ongoing",
                                    style: GoogleFonts.mukta(
                                      fontSize: _width * 0.01,
                                      color: themeColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: _width * 0.02,
                                  ),
                                  Text(
                                    "Favourite",
                                    style: GoogleFonts.mukta(
                                      fontSize: _width * 0.01,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: _width * 0.02,
                                  ),
                                  Text(
                                    "Completed",
                                    style: GoogleFonts.mukta(
                                      fontSize: _width * 0.01,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: _width * 0.02,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: _width * 0.18,
                            padding: EdgeInsets.all(_width * 0.02),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(uiuxImage),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.circular(_width * 0.01),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UI/UX Design",
                                  style: GoogleFonts.mukta(
                                    color: Colors.white,
                                    fontSize: _width * 0.02,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "29 Lessons",
                                  style: GoogleFonts.mukta(
                                    color: Colors.white,
                                    fontSize: _width * 0.013,
                                  ),
                                ),
                                Spacer(),
                                PlayButton(
                                    color: Colors.white,
                                    icon: Icons.play_arrow),
                              ],
                            ),
                          ),
                          Container(
                            height: _width * 0.15,
                            child: Row(
                              children: [
                                Course(
                                  courseName: "Photography",
                                  lessons: "12 Lessons",
                                  image: photograhyImage,
                                ),
                                SizedBox(
                                  width: _width * 0.01,
                                ),
                                Course(
                                  courseName: "Animations",
                                  lessons: "18 Lessons",
                                  image: animationsImage,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff4f5fc),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          _width * 0.03,
                        ),
                        bottomRight: Radius.circular(
                          _width * 0.03,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: _width * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: _width * 0.02,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(_width * 0.01),
                              child: Image.asset(
                                "assets/images/user.jpg",
                                height: _width * 0.04,
                                width: _width * 0.04,
                              ),
                            ),
                            SizedBox(
                              width: _width * 0.01,
                            ),
                            Text(
                              "THE FLUTTER GUY",
                              style: GoogleFonts.mukta(
                                fontSize: _width * 0.02,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.more_vert_sharp,
                              size: _width * 0.02,
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(
                            _width * 0.02,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Progress",
                                style: GoogleFonts.mukta(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: _width * 0.015,
                                ),
                              ),
                              CourseProgress(
                                color: Colors.black,
                                icon: Icons.edit,
                                title: "UI/UX Design",
                                subtitle: "Advanced",
                                widthFactor: 0.5,
                              ),
                              CourseProgress(
                                color: Colors.teal,
                                icon: Icons.camera,
                                title: "Photography",
                                subtitle: "Intermediate",
                                widthFactor: 0.3,
                              ),
                              CourseProgress(
                                color: Colors.amber,
                                icon: Icons.graphic_eq,
                                title: "Animations",
                                subtitle: "Advanced",
                                widthFactor: 0.75,
                              ),
                              Container(
                                padding: EdgeInsets.all(_width * 0.01),
                                child: Column(
                                  children: [
                                    Text(
                                      "Download the Ohara\napp now!",
                                      style: GoogleFonts.mukta(
                                        height: 1,
                                        fontSize: _width * 0.011,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: _width * 0.015,
                                    ),
                                    Image.asset(
                                      "assets/images/download.png",
                                      height: _width * 0.1,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class CourseProgress extends StatelessWidget {
  final String title, subtitle;
  final double widthFactor;
  final IconData icon;
  final Color color;
  CourseProgress(
      {this.color, this.icon, this.subtitle, this.title, this.widthFactor});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(_width * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PlayButton(
            color: color,
            icon: icon,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.mukta(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: _width * 0.015,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.mukta(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                  fontSize: _width * 0.01,
                ),
              )
            ],
          ),
          Container(
            width: _width * 0.07,
            height: _width * 0.007,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(100),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widthFactor,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Course extends StatelessWidget {
  final String courseName, lessons, image;
  Course({this.courseName, this.image, this.lessons});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        padding: EdgeInsets.all(
          _width * 0.01,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            _width * 0.01,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseName,
              style: GoogleFonts.mukta(
                color: Colors.white,
                fontSize: _width * 0.02,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              lessons,
              style: GoogleFonts.mukta(
                color: Colors.white,
                fontSize: _width * 0.013,
              ),
            ),
            Spacer(),
            PlayButton(color: Colors.white, icon: Icons.play_arrow),
          ],
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  PlayButton({this.color, this.icon});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: _width * 0.03,
      width: _width * 0.03,
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.circular(_width * 0.008),
      ),
      child: Icon(
        icon,
        color: color,
        size: _width * 0.02,
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  Button({this.text});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.03,
      width: _width * 0.11,
      decoration: BoxDecoration(
        color: themeColor,
        borderRadius: BorderRadius.circular(_width * 0.008),
      ),
      alignment: Alignment.center,
      child: Text(text,
          style: GoogleFonts.mukta(
              color: Colors.white,
              fontSize: _width * 0.012,
              fontWeight: FontWeight.w700)),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  MenuItem({this.icon, this.title, this.isSelected});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.025,
      child: Row(
        children: [
          SizedBox(
            width: _width * 0.035,
          ),
          Icon(
            icon,
            size: _width * 0.018,
            color: isSelected ? themeColor : Colors.grey,
          ),
          SizedBox(
            width: _width * 0.01,
          ),
          Text(
            title,
            style: GoogleFonts.mukta(
              fontSize: _width * 0.013,
              color: isSelected ? themeColor : Colors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          isSelected
              ? Container(
                  width: _width * 0.003,
                  height: _width * 0.03,
                  decoration: BoxDecoration(
                    color: themeColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
