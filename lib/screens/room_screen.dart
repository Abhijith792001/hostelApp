import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hostel/screens/hostel_screen.dart';
import 'package:hostel/screens/order_conform.dart';

import 'package:lucide_icons/lucide_icons.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.off(HostelScreen()),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(left: 16.w),
                child: Icon(LucideIcons.chevronLeft),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.w),
            child: Icon(LucideIcons.refreshCcw),
          ),
        ],
      ),
      body: Stack(
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
                    Container(
                      padding: EdgeInsets.only(left: 16.w, top: 190.h),
                      height: 295.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/bg_hostel.png'),
                        ),
                      ),
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ashokam',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.sp,
                            ),
                          ),
                          Text(
                            'Ashokam Rooms : 200',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
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
                  Text(
                    'Conform Your Room',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // Text(
                  //   'Explore and choose your ideal room.',
                  //   style: TextStyle(
                  //     fontSize: 9.sp,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    margin: EdgeInsets.symmetric(
                      horizontal: 1.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                      // color: Colors.white,
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Color(0x3F000000),
                      //     blurRadius: 4,
                      //     offset: Offset(0, 0),
                      //     spreadRadius: 0,
                      //   ),
                      // ],
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 22,
                        child: Icon(
                          LucideIcons.doorOpen,
                          color: Color.fromRGBO(164, 18, 63, 1),
                        ),
                      ),
                      title: SizedBox(
                        width: Get.width * 5,
                        child: Text(
                          'Room ',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            LucideIcons.users,
                            size: 12.sp,
                            color: Color.fromRGBO(168, 166, 172, 1),
                          ),
                          Text(
                            '2/3',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(168, 166, 172, 1),
                            ),
                          ),
                        ],
                      ),
                      trailing: InkWell(
                        onTap: () => Get.to(OrderConform()),
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
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Room Mates',style: TextStyle(fontWeight: FontWeight.w600),),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        var roomIndex = index + 1;
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
                              radius: 22,
                              child: Icon(
                                LucideIcons.doorOpen,
                                color: Color.fromRGBO(164, 18, 63, 1),
                              ),
                            ),
                            title: SizedBox(
                              width: Get.width * 5,
                              child: Text(
                                'Abhijith $roomIndex',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              'AA.SC.U3BCA2401014$index',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(168, 166, 172, 1),
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
    );
  }
}
