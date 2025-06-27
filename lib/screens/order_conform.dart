import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hostel/screens/room_screen.dart';
import 'package:lucide_icons/lucide_icons.dart';

class OrderConform extends StatelessWidget {
  const OrderConform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        title: Container(
          margin: EdgeInsets.only(left: 18.w),
          child: Text(
            'Book overview',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
          ),
        ),
        leading: InkWell(
          onTap: () => Get.off(RoomScreen()),
          child: Icon(LucideIcons.chevronLeft,size: 30,),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            height: 1.h,
            color: Color.fromRGBO(227, 227, 227, 1),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),

                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: 150.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/order.png'),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30.h),
                            child: Text(
                              'Thank you for booking!',
                              style: TextStyle(
                                color: Color.fromRGBO(33, 65, 49, 1),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * .6,
                            child: Text(
                              'Congratulations! Your room has been successfully booked.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(33, 65, 49, 1),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30, top: 10),

                      margin: EdgeInsets.only(top: 90.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16.sp)),
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
                            'Booking Detials',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hostel Name : Ashokam',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(168, 166, 172, 1),
                              ),
                            ),
                            Text(
                              'Room No : 1',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(168, 166, 172, 1),
                              ),
                            ),
                            Text(
                              'Booking Date : Mar 15, 2025',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(168, 166, 172, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(RoomScreen()),
                      child: Container(
                        margin: EdgeInsets.only(top: 50.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 9.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
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
                          'Go to Your Room',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -40.w,
                bottom: 220.h,
                child: SizedBox(
                  // color: Colors.amber,
                  height: 200.h,
                  width: 200.w,
                  child: Image.asset('assets/images/boy_flip.png'),
                ),
              ),
            ],
          ),
          Positioned(
            top: 10.h,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Color.fromRGBO(149, 231, 189, 1),
              child: Icon(LucideIcons.check,color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
