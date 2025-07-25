import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:flutter/material.dart';

Widget buildBottomNavigationBarForHR(
    BuildContext context, Function() setstateFunction) {
  return BottomNavigationBar(
    selectedItemColor: AppTheme().primaryColor,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              "assets/images/bottomNavBarIcon-home.png",
              color: _selectedIndexForHR == 0
                  ? AppTheme().primaryColor
                  : Colors.grey,
            )),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              "assets/images/bottomNavBarIcon-list.png",
              color: _selectedIndexForHR == 1
                  ? AppTheme().primaryColor
                  : Colors.grey,
            )),
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
            child: Image.asset(
              "assets/images/bottomNavBarIcon-chat.png",
              color: _selectedIndexForHR == 2
                  ? AppTheme().primaryColor
                  : Colors.grey,
            )),
        label: 'My Order',
      ),
      BottomNavigationBarItem(
        icon: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              "assets/images/bottomNavBarIcon-user.png",
              color: _selectedIndexForHR == 3
                  ? AppTheme().primaryColor
                  : Colors.grey,
            )),
        label: 'Profile',
      ),
    ],
    currentIndex: _selectedIndexForHR,
    // selectedItemColor: const Color(0xFF673AB7),
    unselectedItemColor: Colors.grey,
    onTap: (int index) {
      _selectedIndexForHR = index;
      // context.
      // Handle navigation logic here
      // For example, you can use a Navigator to switch screens
      // Navigator.push(context, MaterialPageRoute(builder: (context) => YourNewScreen()));
      setstateFunction();
    },
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
  );
}

int _selectedIndexForHR = 0;

void _onItemTapped(int index) {
  _selectedIndexForHR = index;

  // Handle navigation logic here
  // For example, you can use a Navigator to switch screens
  // Navigator.push(context, MaterialPageRoute(builder: (context) => YourNewScreen()));
}
