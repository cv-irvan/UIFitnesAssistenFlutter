import 'package:fitnes_assisten/utils/color.dart';
import 'package:fitnes_assisten/utils/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnesEvent extends StatefulWidget {
  @override
  _FitnesEventState createState() => _FitnesEventState();
}

class _FitnesEventState extends State<FitnesEvent> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    var cardContent = Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: Sizeconfig.screenWidth / 1.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 7)
          ]),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage('assets/img/gambar.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EVENT",
                          style: GoogleFonts.inter(
                              letterSpacing: 3,
                              textStyle: TextStyle(
                                  fontSize: Sizeconfig.lebarLayar * 3.5,
                                  color: bgCard)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "National Health Movement",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: Sizeconfig.lebarLayar * 5,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Challenge your friends for following the health plan on \nSatuday and Sunday!",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: Sizeconfig.lebarLayar * 3,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/img/lihat.png',
                          scale: Sizeconfig.lebarLayar,
                        ),
                        FlatButton(
                            onPressed: null,
                            child: Container(
                              height: Sizeconfig.lebarLayar * 12,
                              width: Sizeconfig.lebarLayar * 25,
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "Join",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                    color: bgCard,
                                  )),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
              padding: EdgeInsets.only(left: 20, right: 20),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Event",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: Sizeconfig.lebarLayar * 8,
                                color: bgCard),
                          ),
                        ),
                        Text(
                          "See All ",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: Sizeconfig.lebarLayar * 3,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
              flex: 5,
              child: Container(
                child: ListView(
                  children: [
                    cardContent,
                    cardContent,
                    cardContent,
                    cardContent
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
