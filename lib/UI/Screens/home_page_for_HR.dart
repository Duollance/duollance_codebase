import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
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

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.manrope(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F5F9),
        body: SafeArea(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                // const SizedBox(height: 16),

                const SizedBox(height: 14),
                _buildAISection(),
                const SizedBox(height: 14),
                _buildServiceCategoryHeader(),
                const SizedBox(height: 6),
                Expanded(child: _buildServiceCategoriesGrid()),
                const SizedBox(height: 9),
                _buildCreateProjectButton(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

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
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 5),
              FancyText(
                'HR ADMIN',
                textColor: Colors.white,
                size: 14,
                weight: FontWeight.w500,
              ),
              Spacer(),
              FancyContainer(
                height: 20,
                width: 20,
                child: Image.asset(
                    "assets/images/hrAdminHomepageTopLogos-robo.png"),
              ),
              SizedBox(width: 5),
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

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
        aspectRatio: 343 / 44,
        child: FancyContainer(
          height: 50,
          radius: 9,
          backgroundColor: Colors.white,
          shadows: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search service',
              hintStyle: TextStyle(color: Colors.grey[400]),
              prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
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
            'Service Category',
            textColor: Colors.black,
            size: 16.sp,
            weight: FontWeight.w600,
          ),
          FancyText(
            'See All',
            textColor: AppTheme().primaryColor,
            size: 12.sp,
            weight: FontWeight.w500,
            action: () {},
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
