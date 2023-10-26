
import 'package:e_commerse_project/pages/Address.dart';
import 'package:e_commerse_project/pages/Home_page.dart';
import 'package:e_commerse_project/pages/Login_Page.dart';
import 'package:e_commerse_project/pages/Order_Summary.dart';
import 'package:e_commerse_project/pages/cart_page.dart';
import 'package:e_commerse_project/utils/routes.dart';
import 'package:e_commerse_project/widget/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) =>   CartPage(),
      // MyRoutes.checkRoute:(context) =>  CheckoutPage(key: ValueKey('Checkout'),),
        MyRoutes.addresspage:(context) =>  AddressPage(),
      },
    );
  }
}