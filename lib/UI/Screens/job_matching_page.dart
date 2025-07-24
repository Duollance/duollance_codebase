import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:duollance_mobile_frontend/globals/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class JobMatchingPage extends StatefulWidget {
  const JobMatchingPage({super.key});

  @override
  State<JobMatchingPage> createState() => _JobMatchingPageState();
}

class _JobMatchingPageState extends State<JobMatchingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.manrope(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F5F9),
        body: SafeArea(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FancyText(
                    "Job Matchings",
                    size: 24.sp,
                  ),
                  SizedBox(height: 10 / 2),
                  Row(
                    children: [
                      Expanded(child: _buildSearchBar()),
                      FancyContainer(
                        action: () {},
                        child: Icon(
                          Icons.tune_rounded,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      FancyText(
                        "All Jobs",
                        size: 10,
                      ),
                      SizedBox(width: 10),
                      FancyText(
                        "129 Total",
                        size: 10,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ...List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: _buildPageItemWidget(),
                    ),
                  ),
                  Spacer(),
                  AspectRatio(
                    aspectRatio: 343 / 46,
                    child: FancyContainer(
                      height: 40,
                      width: double.infinity,
                      child: FancyText(
                        "Bid Gigs",
                        textColor: Colors.white,
                      ),
                      backgroundColor: AppTheme().primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  AspectRatio _buildPageItemWidget() {
    return AspectRatio(
      aspectRatio: 343 / 114,
      child: FancyContainer(
        // height: 102,
        // width: double.infinity,
        backgroundColor: getFigmaColor("E2E2E2"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FancyText(
                    "Website Redesign",
                    size: 14.sp,
                    textColor: AppTheme().primaryColor,
                  ),
                  FancyContainer(
                    action: () {},
                    child: Icon(
                      Icons.more_vert,
                      size: 15,
                    ),
                  )
                ],
              ),
              FancyText(
                "\$400",
                size: 12.sp,
              ),
              FancyText(
                "Just Now",
                size: 10.sp,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FancyContainer(
                    radius: 7,
                    backgroundColor: AppTheme().primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7.0, vertical: 4.0),
                      child: FancyText(
                        "Review Poject",
                        size: 14.sp,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  FancyContainer(
                    action: () {},
                    child: Icon(
                      Icons.bookmark_outline_rounded,
                      size: 15,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
        aspectRatio: 343 / 44,
        child: FancyContainer(
          height: 50,
          radius: 9,
          backgroundColor: getFigmaColor("E2E2E2"),
          // shadows: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.1),
          //     spreadRadius: 1,
          //     blurRadius: 5,
          //     offset: const Offset(0, 3),
          //   ),
          // ],
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                // color: Colors.grey[400],
                fontWeight: FontWeight.w100,
              ),
              prefixIcon: Icon(
                Icons.search,
                // color: Colors.grey[400],
                grade: .1,
                opticalSize: 10,
                weight: 1,
                size: 25,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 1),
            ),
          ),
        ),
      ),
    );

    // Stack(
    //   children: [
    //     // Container(
    //     //   height: 40,
    //     //   decoration: const BoxDecoration(
    //     //     color: Color(0xFF673AB7),
    //     //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
    //     //   ),
    //     // ),

    //  ],
    // );
  }

  Widget _buildAISection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AspectRatio(
        aspectRatio: 343 / 100,
        child: FancyContainer(
          height: 120,
          radius: 8,
          backgroundColor: AppTheme().primaryColor,
          // gradient: const LinearGradient(
          //   colors: [Color(0xFF6A1B9A), Color(0xFF9C27B0)],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyText(
                        'Let our AI be your HR, match with top talents effortlessly within seconds',
                        textColor: Colors.white,
                        size: 12.sp,
                        weight: FontWeight.w500,
                      ),
                      const SizedBox(height: 4),
                      FancyContainer(
                        action: () {},
                        height: 22.w,
                        width: 80,
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: FancyText(
                          'Try now',
                          textColor: const Color(0xFF673AB7),
                          size: 10.sp,
                          weight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    'assets/images/ai_image.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceCategoryHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FancyText(
            'Skill Category',
            textColor: Colors.black,
            size: 16.sp,
            weight: FontWeight.w600,
          ),
          FancyContainer(
            backgroundColor: AppTheme().primaryColor,
            radius: 5,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: FancyText(
                'Choose Custom',
                textColor: Colors.white,
                size: 12.sp,
                weight: FontWeight.w500,
                action: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCategoriesGrid() {
    final List<Map<String, dynamic>> categories = [
          {
            'name': 'Graphic Design',
            'icon': "assets/images/skillMenuGridIcon-pallet.png",

            // Icons.sentiment_satisfied_alt,
            'color': const Color(0xFFFFF3E0)
          },
          {
            'name': 'Digital Marketing',
            'icon': "assets/images/skillMenuGridIcon-speaker.png",
            'color': const Color(0xFFFFEBEE)
          },
          {
            'name': 'Program & Tech',
            'icon': "assets/images/skillMenuGridIcon-Calendar.png",
            'color': const Color(0xFFE0F2F7)
          },
          {
            'name': 'Video & Animation',
            'icon': "assets/images/skillMenuGridIcon-video.png",
            'color': const Color(0xFFFBE9E7)
          },
          {
            'name': 'UI/UX Design',
            'icon': "assets/images/skillMenuGridIcon-pen.png",
            'color': const Color(0xFFE8F5E9)
          },
          {
            'name': 'Product Management',
            'icon': "assets/images/skillMenuGridIcon-deliveryBox.png",
            'color': const Color(0xFFE3F2FD)
          },
          {
            'name': 'Product Photography',
            'icon': "assets/images/skillMenuGridIcon-camera.png",
            'color': const Color(0xFFFFF8E1)
          },
          {
            'name': 'Build AI Services',
            'icon': "assets/images/skillMenuGridIcon-CPU.png",
            'color': const Color(0xFFF9FBE7)
          },
        ] +
        [
          {
            'name': 'Product Management',
            'icon': "assets/images/skillMenuGridIcon-deliveryBox.png",
            'color': const Color(0xFFE3F2FD)
          },
          {
            'name': 'Product Photography',
            'icon': "assets/images/skillMenuGridIcon-camera.png",
            'color': const Color(0xFFFFF8E1)
          },
          {
            'name': 'Build AI Services',
            'icon': "assets/images/skillMenuGridIcon-CPU.png",
            'color': const Color(0xFFF9FBE7)
          },
          {
            'name': 'Video & Animation',
            'icon': "assets/images/skillMenuGridIcon-video.png",
            'color': const Color(0xFFFBE9E7)
          },
        ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        crossAxisCount: 4,
        // itemCount: categories.length,
        // itemBuilder: ,
        // staggeredTileBuilder: (int index) => const StaggeredGridTile.fit(
        //     crossAxisCellCount: 2, child: SizedBox()),
        // fit(2),

        mainAxisSpacing: 16.0.sp,
        crossAxisSpacing: 16.0.sp, childAspectRatio: .65,
        children: categories.map((Map detail) {
          return
              // SizedBox();
              _buildCategoryItem(
            detail['name'],
            detail['icon'],
            detail['color'],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryItem(String title, String icon, Color color) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: FancyContainer(
              // width: 10,
              action: () {},
              radius: 12,
              backgroundColor: color,
              // padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(icon),
              )
              // Icon(icon, size: 20, color: Colors.black54),
              ),
        ),
        const SizedBox(height: 4),
        FancyText(
          title,
          textAlign: TextAlign.center,
          textColor: Colors.black87,
          size: 8,
          weight: FontWeight.w500,
        ),
      ],
    );
  }

  Widget _buildCreateProjectButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: AspectRatio(
        aspectRatio: 343 / 44,
        child: FancyContainer(
          action: () {},
          height: 50,
          radius: 8,
          backgroundColor: AppTheme().primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 20,
                grade: .1,
                weight: 1,
              ),
              const SizedBox(width: 8),
              FancyText(
                'Create a Project',
                textColor: Colors.white,
                size: 16.sp,
                weight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
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
