import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
                          padding: EdgeInsets.all(16),
                          width: 260.w,
                          height: 295.h,
                          // color: Colors.amber,
                          child: Text(
                            'Your next student home is just a tap away.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: 'ArchitectsDaughter',
                              color: Colors.white,
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
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(42),
                      topLeft: Radius.circular(42),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [const Color(0xFFFFF7F9), Colors.white],
                    ),
                  ),
                  height: 450.h,
                  width: Get.width,
                  child: Column(children: [
                      Text('data')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 420.h,
            child: Container(
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
