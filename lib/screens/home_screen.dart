import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hostel/screens/hostel_screen.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(16),
                    height: 400.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -.5),
                        end: Alignment(2, .8),
                        colors: [
                          Colors.white,
                          Color.fromRGBO(164, 18, 63, 1),
                          const Color.fromRGBO(164, 18, 63, 1),
                        ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 295.h,
                          // color: Colors.amber,
                          child: Image.asset('assets/images/wall.png'),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(16.sp),
                          width: 260.w,
                          height: 295.h,
                          // color: Colors.amber,
                          child: InkWell(
                            onTap: ()=> Get.toNamed('/notification'),
                            child: Text(
                              'Your next student home is just a tap away.',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'ArchitectsDaughter',
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(42.sp),
                      topLeft: Radius.circular(42.sp),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [const Color(0xFFFFF7F9), Colors.white],
                    ),
                  ),
                  height: 450.h,
                  width: Get.width,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontFamily: 'Itim',
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              height: 34.h,
                              width: Get.width * .75,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    184,
                                    184,
                                    184,
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(42.sp),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    spacing: 5.sp,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(LucideIcons.users, size: 18.sp),
                                      Text(
                                        'Two Sharing',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Icon(LucideIcons.chevronDown, size: 18.sp),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    184,
                                    184,
                                    184,
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(42.sp),
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20.sp,
                                child: Icon(LucideIcons.settings2, size: 18.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 5.h),
                              margin: EdgeInsets.symmetric(
                                horizontal: 1.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.sp),
                                ),
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
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 22.sp,
                                  child: Icon(
                                    LucideIcons.doorOpen,
                                    color: Color.fromRGBO(164, 18, 63, 1),
                                  ),
                                ),
                                title: SizedBox(
                                  width: Get.width * 5,
                                  child: Text(
                                    'Ashokam',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  'Available Room : 1',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(168, 166, 172, 1),
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: ()=>Get.to(HostelScreen()),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                      vertical: 9.h,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.sp),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.30, 0.56),
                                        end: Alignment(1.04, 0.08),
                                        colors: [
                                          const Color(0xFFA4123F),
                                          const Color(0xFFD72A5F),
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      'View',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: -9.w,
            bottom: 420.h,
            child: SizedBox(
              // color: Colors.amber,
              height: 200.h,
              width: 200.w,
              child: Image.asset('assets/images/boy.png'),
            ),
          ),
        ],
      ),
    );
  }
}
