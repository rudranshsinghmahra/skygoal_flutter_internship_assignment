import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customCard(
    {collegeName, rating, description, highlight, watchListedBy, imagePath}) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
    child: Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          collegeName,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff27C200),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 4, bottom: 4),
                            child: Row(
                              children: [
                                Text(rating,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13,
                                        color: Colors.white)),
                                const SizedBox(
                                  width: 2,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 210,
                          child: Text(description,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9,
                                  color: const Color(0xff8E8E8E))),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff0E3C6E),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12, top: 5, bottom: 5),
                            child: Text("Apply Now",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                "assets/like_1.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              highlight,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                fontSize: 9,
                                color: const Color(
                                  0xff8E8E8E,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xffA9A9A9),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              watchListedBy,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 9,
                                color: const Color(
                                  0xff8E8E8E,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.white,
                    child: const Center(
                      child: Icon(Icons.share_outlined),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.white,
                    child: const Center(
                      child: Icon(Icons.bookmark_border),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
