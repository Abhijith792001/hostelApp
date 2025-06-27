import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hostel/screens/home_screen.dart';
import 'package:hostel/screens/room_screen.dart';
import 'package:lucide_icons/lucide_icons.dart';

class NottficationScreen extends StatelessWidget {
  const NottficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        title: Container(
          margin: EdgeInsets.only(left: 18.w),
          child: Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
          ),
        ),
        leading: InkWell(
          onTap: () => Get.offAll(HomeScreen()),
          child: Icon(LucideIcons.chevronLeft, size: 30),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            height: 1.h,
            color: Color.fromRGBO(207, 207, 207, 1),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 16),

        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 240, 240, 1),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(51, 51, 51, 1),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 16, left: 0, right: 16),
              width: Get.width,
              margin: EdgeInsets.only(top: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                // image: DecorationImage(
                //   alignment: Alignment.topLeft,
                //   image: AssetImage('assets/images/bell_amrita.png'),
                // ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Container(
                // margin: EdgeInsets.only(left: 65.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/bell_amrita.png',
                      height: 100,
                      width: 80,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 20),
                        width: 210,
                        // color: Colors.green,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Join the ISSOCP-2024 ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'Together leading researcher The Indo-Swiss Symposium on Cardio Cardio ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(115, 115, 115, 1),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '...',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(115, 115, 115, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
