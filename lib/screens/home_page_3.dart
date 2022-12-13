import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/screens/home_page_4.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/widgets/custom_bottom_nav_bar.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/widgets/custom_card.dart';

class HomePageThree extends StatefulWidget {
  const HomePageThree({Key? key}) : super(key: key);

  @override
  State<HomePageThree> createState() => _HomePageThreeState();
}

class _HomePageThreeState extends State<HomePageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff0E3C6E),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(
                30,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "Search for colleges, schools.....",
                                prefixIcon: const Icon(
                                  CupertinoIcons.search,
                                  color: Color(0xffD6D6D6),
                                  size: 20,
                                ),
                                hintStyle: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: const Color(0xffD6D6D6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: const Icon(
                        CupertinoIcons.mic_solid,
                        color: Color(0xff0E3C6E),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePageFour()));
                },
                child: customCard(
                    collegeName: "GHJK Engineering college",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                    rating: "4.3",
                    highlight: "More than 1000+ students have been placed",
                    watchListedBy: "468+",
                    imagePath: "assets/image_1.png"),
              ),
              customCard(
                  collegeName: "Bachelor of Technology",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                  rating: "4.3",
                  highlight:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing ",
                  watchListedBy: "468+",
                  imagePath: "assets/image_2.png"),
              customCard(
                  collegeName: "GHJK Engineering college",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                  rating: "4.3",
                  highlight: "More than 1000+ students have been placed",
                  watchListedBy: "468+",
                  imagePath: "assets/image_3.png"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
