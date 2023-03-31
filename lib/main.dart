import 'package:all_in_one/screen/provider/web_provider.dart';
import 'package:all_in_one/screen/view/web_page1.dart';
import 'package:all_in_one/screen/view/web_page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()
{

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => WebProvider(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => WebPage1(),
          'view':(context) => WebPage2(),


        },
      ),
    )
  );
}