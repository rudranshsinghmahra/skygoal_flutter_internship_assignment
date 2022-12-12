import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/widgets/custom_appbar.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/widgets/custom_banners.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  String? groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: CustomAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 37,
          right: 37,
        ),
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setTheState) {
                            return SizedBox(
                              height: 350,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 28.0, left: 38, right: 38),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Sort by",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18),
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Icon(Icons.cancel))
                                      ],
                                    ),
                                    const Divider(
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    reusableFilter("Bachelor of Technology",
                                        "assets/education.png", setTheState),
                                    reusableFilter("Bachelor of Architecture",
                                        "assets/sketch.png", setTheState),
                                    reusableFilter("Pharmacy",
                                        "assets/pharmacy.png", setTheState),
                                    reusableFilter("Law", "assets/balance.png",
                                        setTheState),
                                    reusableFilter("Management",
                                        "assets/management.png", setTheState),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: customBanner(
                    "Top Colleges",
                    "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
                    "assets/banner_1.png",
                    134.0,
                    "+126",
                    "College",
                    0.0,
                  ),
                ),
                customBanner(
                    "Top Schools",
                    "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                    "assets/banner_2.png",
                    134.0,
                    "+106",
                    "Schools",
                    0.0),
                customBanner(
                    "Exams",
                    "Find an end to end information about the exams that are happening in India",
                    "assets/banner_3.png",
                    134.0,
                    "+16",
                    "Exams   ",
                    15.0),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Material(
        color: const Color(0xff0E3C6E),
        child: TabBar(
          padding: const EdgeInsets.all(10),
          indicatorColor: Colors.white,
          indicatorPadding: const EdgeInsets.only(left: 12.0, right: 12.0),
          indicatorWeight: 3,
          controller: tabController,
          tabs: [
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.home,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Search",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.bookmark,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Bookmark",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.save_rounded,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Saved",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.account_box_rounded,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Account",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reusableFilter(String filterName, leadingImage, setTheState) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    leadingImage,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  filterName,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600, fontSize: 16),
                )
              ],
            ),
          ),
          Radio(
            activeColor: const Color(0xff0E3C6E),
            visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: filterName,
            groupValue: groupValue,
            onChanged: (value) {
              setTheState(() {
                groupValue = value.toString();
              });
            },
          ),
        ],
      ),
    );
  }
}
