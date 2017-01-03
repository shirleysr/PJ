import 'package:angular2/core.dart';
import 'package:untitled7/model/evaluation.dart';
@Component(
    selector: 'student_evaluate',
    templateUrl: 'student_evaluate_component.html',
    styleUrls: const ['student_evaluate_component.css'])
class StudentEvaluateComponent{
  List<Evaluation> students=[];
  Evaluation e1=new Evaluation("wang","good");
  Evaluation e2=new Evaluation("shen","bad");
  StudentEvaluateComponent()
  {
    students.add(e1);
    students.add(e2);
  }
 final String title="学生评价";
}