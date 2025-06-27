import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:hostel/screens/home_screen.dart';
import 'package:hostel/screens/nottfication_screen.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(
          initialRoute: '/',
          getPages: [
            GetPage(name: '/', page: ()=> HomeScreen()),
            GetPage(name: '/notification', page: ()=>NottficationScreen())
          ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(164, 18, 63, 1))
          ),
          // home: HomeScreen(),
        );
      }
    );
  }
}