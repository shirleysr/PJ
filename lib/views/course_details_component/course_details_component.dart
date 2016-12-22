import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2/platform/common.dart';
import "package:material2_dart/material.dart";
import 'package:untitled7/model/course.dart';

@Injectable()

@Component(
    selector: 'course_details',
    templateUrl: 'course_details_component.html',
    styleUrls: const ['course_details_component.css'])

class CourseDetailComponent{

  Course course1=new Course(1,"aaa","bbb","ccc","ddd");
  Course course2=new Course(2,"aaa","bbb","ccc","ddd");
  Course course3=new Course(3,"aaa","bbb","ccc","ddd");
  Course course4=new Course(4,"aaa","bbb","ccc","ddd");
  Course course5=new Course(5,"aaa","bbb","ccc","ddd");
  Course course6=new Course(6,"aaa","bbb","ccc","ddd");
  Course course7=new Course(7,"aaa","bbb","ccc","ddd");
  Course course8=new Course(8,"aaa","bbb","ccc","ddd");
  List<Course> courseList1=[];
  CourseDetailComponent(){
    courseList1.add(course1);
    courseList1.add(course2);
  }

}


