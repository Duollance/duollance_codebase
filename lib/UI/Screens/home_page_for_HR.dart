import 'dart:math';

import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:duollance_mobile_frontend/globals/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:chronoLove/ui/component/fancy_container.dart';
// import 'package:chronoLove/ui/component/fancy_text.dart';

class HomePageForHr extends StatefulWidget {
  const HomePageForHr({super.key});

  @override
  State<HomePageForHr> createState() => _HomePageForHrState();
}

class _HomePageForHrState extends State<HomePageForHr> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Map> statusTypes = [
    {
      "status": "In Progress",
      "color": AppTheme().primaryColor,
    },
    {
      "status": "In Review",
      "color": const Color(0xFF673AB7),
    },
    {
      "status": "Completed",
      "color": const Color(0xFF4CAF50),
    },
    {
      "status": "Cancelled",
      "color": const Color(0xFFF44336),
    },
  ];

  List<Map> markType = [
    {"name": "wavy", "icon": "assets/images/hrTagIcon-wavyCheck.png"},
    {"name": "pin", "icon": "assets/images/hrTagIcon-pin.png"},
    {"name": "delete", "icon": "assets/images/hrTagIcon-delete.png"},
  ];
  // git config --global user.email "danoritic@gmail.com"
  // git config --global user.name "danoritic"
  List<Map> _hrProjectItems = [
    {
      "title": "UI/UX Design | Prodify",
      "status": "In Progress",
      "marktype": "wavy",
      "subtitle": "Assigned to John Doe   ",
    },
    {
      "title": "Web Development | Duollance",
      "status": "In Review",
      "marktype": "pin",
      "subtitle": "ssdssd",
    },
    {
      "title": "Mobile App | ChronoLove",
      "status": "Completed",
      "marktype": "delete",
      "subtitle": "ssdssd",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.manrope(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 6),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildServiceCategoryHeader(),
                        const SizedBox(height: 4),
                        _buildCategoryRow(),
                        const SizedBox(height: 6),
                        FancyText(
                          '129 Total',
                          size: 10.sp,
                          weight: FontWeight.w500,
                        ),
                        const SizedBox(height: 6),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ...List.generate(
                                  _hrProjectItems.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: _buildHRProjectItem(
                                        _hrProjectItems[index]),
                                  ),
                                ),
                                ...List.generate(
                                  _hrProjectItems.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: _buildHRProjectItem(
                                        _hrProjectItems[index]),
                                  ),
                                ),
                                ...List.generate(
                                  _hrProjectItems.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: _buildHRProjectItem(
                                        _hrProjectItems[index]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 9),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  SingleChildScrollView _buildCategoryRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_categories.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: ChoiceChip(
              labelPadding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: -8,
              ),
              label: FancyText(
                _categories[index],
                textColor: selectedCategory == _categories[index]
                    ? Colors.white
                    : Colors.black87,
                size: 10.sp,
                weight: FontWeight.w500,
              ),
              selected: selectedCategory == _categories[index],
              onSelected: (bool selected) {
                setState(() {
                  selectedCategory = _categories[index];
                });
              },
              backgroundColor: Colors.grey[200],
              selectedColor: AppTheme().primaryColor,
              padding: EdgeInsets.all(0),
              // avatarBoxConstraints: BoxConstraints(maxHeight: 10, maxWidth: 10),

              showCheckmark: false,
              visualDensity: VisualDensity(horizontal: 0, vertical: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          );
        }),
      ),
    );
  }

  String selectedCategory = 'All';

  Widget _buildHeader() {
    return FancyContainer(
      padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
      backgroundColor: AppTheme().primaryColor,
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FancyContainer(
                child: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 5),
              FancyText(
                'HR ADMIN',
                textColor: Colors.white,
                size: 14,
                weight: FontWeight.w500,
              ),
              const Spacer(),
              FancyContainer(
                height: 20,
                width: 20,
                child: Image.asset(
                    "assets/images/hrAdminHomepageTopLogos-robo.png"),
              ),
              const SizedBox(width: 5),
              FancyContainer(
                height: 20,
                width: 20,
                child: Image.asset(
                    "assets/images/hrAdminHomepageTopLogos-settings.png"),
              ),
            ],
          ),
          FancyText(
            'Welcome back, Progress 👋',
            textColor: Colors.white,
            size: 14,
            weight: FontWeight.w500,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  List<String> _categories = [
    'All',
    'in Progress',
    'in Review',
    'Completed',
    'Cancelled',
  ];

  Widget _buildServiceCategoryHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FancyText(
            'Projects',
            textColor: Colors.black,
            size: 16.sp,
            weight: FontWeight.w600,
          ),
          const Spacer(),
          SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/hrTagIcon-delete.png")),
          const SizedBox(width: 10),
          SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/hrTagIcon-pin.png")),
          const SizedBox(width: 10),
          SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/hrTagIcon-wavyCheck.png"))

          // FancyText(
          //   'See All',
          //   textColor: AppTheme().primaryColor,
          //   size: 12.sp,
          //   weight: FontWeight.w500,
          //   action: () {},
          // ),
        ],
      ),
    );
  }

  Widget _buildHRProjectItem(Map detail) {
    _hrProjectItems;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: AspectRatio(
          aspectRatio: 343 / 75,
          child: FancyContainer(
            // height: 120,
            backgroundColor: getFigmaColor("EFEFEF"),
            // height: 120,
            radius: 14,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      FancyText(
                        detail['title'],
                        // "UI/UX Design | Prodify",
                        size: 14.sp,
                      ),
                      const Spacer(),
                      Builder(builder: (context) {
                        Map statusDetail = statusTypes.firstWhere(
                          (element) {
                            return element["status"] == detail['status'];
                          },
                        );
                        return FancyContainer(
                          // height: 20,
                          radius: 5,
                          backgroundColor:
                              (statusDetail['color'] as Color).withAlpha(60),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 1,
                            ),
                            child: Row(
                              children: [
                                FancyContainer(
                                  height: 3,
                                  width: 3,
                                  backgroundColor:
                                      (statusDetail['color'] as Color),
                                ),
                                const SizedBox(width: 5),
                                FancyText(
                                  "${detail['status']}",
                                  textColor: (statusDetail['color'] as Color),
                                  size: 10.sp,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                      const SizedBox(width: 5),
                      FancyContainer(
                        child: const Icon(Icons.more_vert_rounded,
                            size: 20, color: Colors.black54),
                      )
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      FancyText(
                        "Assigned to John Doe",
                        size: 10.sp,
                      ),
                      const SizedBox(width: 5),
                      FancyContainer(
                        height: 2,
                        width: 2,
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(width: 5),
                      FancyText(
                        "Assigned to John Doe",
                        size: 10.sp,
                      ),
                      // Spacer(),
                      Expanded(
                        child: SizedBox(
                          height: 15,
                          width: 15,
                          child: Builder(builder: (context) {
                            // marktype

                            return Image.asset(
                                "${markType[Random().nextInt(markType.length)]["icon"]}");
                          }),
                        ),
                      )
                      // FancyText(
                      //     "${}")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/bottomNavBarIcon-home.png")),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/bottomNavBarIcon-list.png")),
          // Icon(
          //   Icons.people_alt,
          //   color: _selectedIndex == 1 ? const Color(0xFF673AB7) : Colors.grey,
          // ),
          label: 'HR',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/bottomNavBarIcon-chat.png")),
          label: 'My Order',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/bottomNavBarIcon-user.png")),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFF673AB7),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
    );
  }
}
