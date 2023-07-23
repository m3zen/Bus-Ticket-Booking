import 'package:bustick/screens/dashboard/my_ticket_screen.dart';
import 'package:bustick/screens/dashboard/notification_screen.dart';
import 'dashboard/home_screen.dart';
import 'package:bustick/utils/colors.dart';
import 'package:bustick/utils/dimensions.dart';
import 'package:bustick/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: new Material(
        elevation: 10,
        child: new BottomNavigationBar(
            elevation: 25,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: _onTapIndex,
            selectedLabelStyle: TextStyle(
              // new
              color: CustomColor.primaryColor,
              fontSize: Dimensions.smallTextSize,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              // new
              color: Colors.grey,
              fontSize: Dimensions.smallTextSize,
              fontWeight: FontWeight.bold,
            ),
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/home.svg',
                    color: currentIndex == 0
                        ? CustomColor.primaryColor
                        : Colors.grey,
                  ),
                  label: Strings.home // modified
                  ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/document.svg',
                    color: currentIndex == 1
                        ? CustomColor.primaryColor
                        : Colors.grey,
                  ),
                  label: Strings.myTicket // modified
                  ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/notification.svg',
                    color: currentIndex == 2
                        ? CustomColor.primaryColor
                        : Colors.grey,
                  ),
                  label: Strings.notifications // modified
                  ),
            ]),
      ),
      body: goToScreen(currentIndex),
    );
  }

  _onTapIndex(index) {
    setState(() {
      currentIndex = index;
      print('index: $index');
    });
    goToScreen(currentIndex);
  }

  goToScreen(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return MyTicketScreen();
      case 2:
        return NotificationScreen();
    }
  }
}
