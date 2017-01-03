// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:untitled7/views/course_level_component/course_level_component.dart';
import 'package:untitled7/views/student_evaluate_component/student_evaluate_component.dart';
//import 'package:angular2/router.dart';
//import'package:untitled7/model/course_service.dart';
//import "package:material2_dart/material.dart";
//import 'package:untitled7/model/course.dart';
//import 'package:untitled7/views/dashboard_component/dashboard_component.dart';
//import 'package:untitled7/views/course_details_component/course_details_component.dart';
@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [CourseLevelComponent,StudentEvaluateComponent]
)

/*@RouteConfig(const [
  const Route(path: '/courses', name: 'Courses', component: CourseDetailComponent),
  const Route(path: '/', name: 'Dashboard',component: DashboardComponent,useAsDefault: true),
  const Route( path: '/detail/:id', name: 'CourseDetail', component: CourseDetailComponent),
])*/

class AppComponent {
  String title = '课程推荐';

}
