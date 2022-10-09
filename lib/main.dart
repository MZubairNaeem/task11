import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'change_course.dart';
import 'courses.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) =>  ChangeCourse(),
    child: MyApp()
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70,left: 20,right: 20),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF5c67c1),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                     "We are learning " +Provider.of<ChangeCourse>(context).subject,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              Courses(course: "Getx"),
              Courses(course: "Bloc"),
              Courses(course: "Cubit"),
            ],
          ),
        ),
      ),
    );
  }
}
