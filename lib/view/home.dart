import 'package:fitnes_assisten/utils/color.dart';
import 'package:fitnes_assisten/utils/sizeConfig.dart';
import 'package:fitnes_assisten/view/fitnestEvent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 40),
                  width: Sizeconfig.lebarLayar * 15,
                  height: Sizeconfig.lebarLayar * 15,
                  decoration: BoxDecoration(
                    color: bgNotif,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.notifications_active,
                      color: bgCard,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 40),
                  child: Icon(
                    Icons.circle,
                    size: Sizeconfig.lebarLayar * 15,
                    color: bgCard,
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Fitness",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: Sizeconfig.lebarLayar * 8,
                          color: bgBanner,
                        ),
                      ),
                    ),
                    Text(
                      "Assisten",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: Sizeconfig.lebarLayar * 8, color: bgCard),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: bgBanner,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FitnesEvent()));
                          },
                          child: Icon(
                            Icons.circle,
                            size: Sizeconfig.lebarLayar * 20,
                            color: bgCard,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chat with \nYour Trainor!",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: Sizeconfig.lebarLayar * 3.5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              "Clint Turner",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                fontSize: Sizeconfig.lebarLayar * 3,
                                color: bgCard,
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(14),
                          width: Sizeconfig.lebarLayar * 42.5,
                          height: Sizeconfig.lebarLayar * 46,
                          decoration: BoxDecoration(
                            color: bgCard,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/img/calori.png'),
                              scale: Sizeconfig.lebarLayar,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CALORIES",
                                style: GoogleFonts.inter(
                                  letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 2.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "360 cal \nlast update 5m",
                                style: GoogleFonts.inter(
                                  // letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 3,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(14),
                          width: Sizeconfig.lebarLayar * 42.5,
                          height: Sizeconfig.lebarLayar * 46,
                          decoration: BoxDecoration(
                            color: bgCard,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/img/garis.png'),
                                scale: Sizeconfig.lebarLayar),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "WEIGHT",
                                style: GoogleFonts.inter(
                                  letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 2.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "26 kg \nlast update 5h",
                                style: GoogleFonts.inter(
                                  // letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 3,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(14),
                          width: Sizeconfig.lebarLayar * 42.5,
                          height: Sizeconfig.lebarLayar * 46,
                          decoration: BoxDecoration(
                            color: bgCard,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/img/minum.png'),
                                scale: Sizeconfig.lebarLayar),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CALORIES",
                                style: GoogleFonts.inter(
                                  letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 2.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "760 cal \nlast update 5m",
                                style: GoogleFonts.inter(
                                  // letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 3,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(14),
                          width: Sizeconfig.lebarLayar * 42.5,
                          height: Sizeconfig.lebarLayar * 46,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/img/lari.png'),
                                scale: Sizeconfig.lebarLayar),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STEP",
                                style: GoogleFonts.inter(
                                  letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 2.5,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "3,650 \nlast update 5m",
                                style: GoogleFonts.inter(
                                  // letterSpacing: 3,
                                  textStyle: TextStyle(
                                    fontSize: Sizeconfig.lebarLayar * 3,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
