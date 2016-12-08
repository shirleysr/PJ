//课程推荐模块
import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:untitled7/model/course.dart';
import 'package:untitled7/model/course_service.dart';

@Component(
    selector: 'my-dashboard',
    templateUrl: 'dashboard_component.html',
    styleUrls: const['dashboard_component.css'],
    directives: const [CourseSearchComponent, ROUTER_DIRECTIVES])

class dashboard_component{

  List<Course> courses;

  final CourseService _courseService;

  DashboardComponent(this._courseService);

  Future<Null> ngOnInit() async {
  courses = (await _courseService.getHeroes()).skip(1).take(4).toList();//课程推荐模块
  }
  }


