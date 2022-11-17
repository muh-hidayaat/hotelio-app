import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelio/config/app_color.dart';
import 'package:hotelio/controller/c_home.dart';
import '../config/app_asset.dart';
import 'nearby_page.dart';

class HomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);
  final cHome = Get.put(CHome());

  final List<Map> listNav = [
    {'icon': AppAsset.iconNearby, 'label': 'Nearby'},
    {'icon': AppAsset.iconHistory, 'label': 'History'},
    {'icon': AppAsset.iconPayment, 'label': 'Payment'},
    {'icon': AppAsset.iconReward, 'label': 'Reward'},
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Obx(() {
        if (cHome.indexPage == 1) {
          return const Center(child: Text('History'));
          // return const HistoryPage()
        }
        return NearbyPage();
      }),
      bottomNavigationBar: Obx(() {
        return Material(
          elevation: 8,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 8, bottom: 6),
            child: BottomNavigationBar(
              currentIndex: cHome.indexPage,
              onTap: (value) => cHome.indexPage = value,
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
              selectedIconTheme: const IconThemeData(
                color: AppColor.primary,
              ),
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              selectedFontSize: 12,
              items: listNav.map((e) {
                return BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(e['icon'])),
                  label: e['label'],
                );
              }).toList(),
            ),
          ),
        );
      }),
    );
  }
}
