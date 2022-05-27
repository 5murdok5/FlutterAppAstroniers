import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Routes/routes.dart';
import 'package:tresastronautas/src/pages/page_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      title: 'Rapifas',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => PagesContainer(),
        ),
      ],
    );
  }
}
