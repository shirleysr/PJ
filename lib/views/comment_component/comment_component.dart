import 'package:angular2/core.dart';
import 'dart:convert';
@Component(
    selector: 'comment',
    templateUrl: 'comment_component.html',
    styleUrls:const['comment_component.css'])
class commentComponent {
  bool submitted = false;
  String data;
  void onSubmit(data) {
    this.data = JSON.encode(data);
  }
}