import 'dart:async';
import 'dart:convert';
import 'package:angular2/core.dart';
import 'package:http/http.dart';
import 'course.dart';


@Injectable()
class CourseService {
  static final _headers = {'Content-Type': 'application/json'};
  static const _CoursesUrl = 'app/Courses';

  final Client _http;

  CourseService(this._http);

  Future<List<Course>> getCourses() async {
    try {
      final response = await _http.get(_CoursesUrl);
      final Courses = _extractData(response)
          .map((value) => new Course.fromJson(value))
          .toList();
      return Courses();
    } catch (e) {
      throw _handleError(e);
    }
  }
  dynamic  _extractData(Response resp) => JSON.decode(resp.body)['data'];

  Exception _handleError(dynamic e) {
    return new Exception('Server error; cause: $e');
  }

  Future<Course> getCourse(int id) async =>
      (await getCourses()).firstWhere((Course) => Course.id == id);}


