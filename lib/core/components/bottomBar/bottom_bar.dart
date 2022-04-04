import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halol_farm/screens/home/home_screen/home_screen_page.dart';
import 'package:halol_farm/screens/home/notif_page/notif_page.dart';
import 'package:halol_farm/screens/home/profile_page/profile_page.dart';
import 'package:halol_farm/screens/home/search_page/search_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomNavBar> {
  HomeScreenPage? _homeScreen;
  SearchPage? _searchPage;
  NotifPage? _notifPage;
  ProfilePage? _profile;

  final List _pages = [];

  @override
  void initState() {
    super.initState();
    _homeScreen = const HomeScreenPage();
    _searchPage = const SearchPage();
    _notifPage = const NotifPage();
    _profile = const ProfilePage();

    _pages.addAll([_homeScreen, _searchPage, _notifPage, _profile]);
    debugPrint("$_pages");
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
          setState(() {
            currentIndex = v;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: currentIndex == 0
                ?  SvgPicture.asset(
                      "assets/svg/home-2-active.svg",
                  )
                :  SvgPicture.asset(
                      "assets/svg/home-2.svg",
                  ),
          ),
          BottomNavigationBarItem(label: "",
            icon: currentIndex == 1
                ?  SvgPicture.asset(
                      "assets/svg/search-active.svg",
                  )
                :  SvgPicture.asset(
                      "assets/svg/search.svg",
                  ),
          ),
          BottomNavigationBarItem(label: "",
            icon: currentIndex == 2
                ? SvgPicture.asset(
                      "assets/svg/bell-active.svg",
                  )
                :  SvgPicture.asset(
                      "assets/svg/bell.svg"
                      
                  ),
          ),
          BottomNavigationBarItem(label: "",
            icon: currentIndex == 3
                ?  SvgPicture.asset(
                      "assets/svg/user-active.svg",
                  )
                :  SvgPicture.asset(
                      "assets/svg/user.svg",
                  ),
          )
        ],
      ),
    );
  }
}
