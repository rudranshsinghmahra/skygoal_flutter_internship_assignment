import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customBanner(
    String title, String subTitle, String img, rightPadding, number, name,bottomPadding) {
  return Padding(
    padding: EdgeInsets.only(
      top: 30.0,
      bottom: bottomPadding
    ),
    child: Stack(
      children: [
        SizedBox(
          height: 158,
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 19.0, left: 21, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(right: rightPadding, top: 5),
                child: Text(
                  subTitle,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 12,
          right: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                number,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                name,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: const Color(0xff848484)),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
