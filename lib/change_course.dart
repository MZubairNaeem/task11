import 'package:flutter/cupertino.dart';

class ChangeCourse extends ChangeNotifier{
  String subject = "";
  void changeSubjects(String newSub){
      subject = newSub;
      notifyListeners();
  }
}