class Course{
   final int id;//课程编号
   String name;//课程名
   String institute;//开设院系
   String teacher_name;//课程教师名
   String description;//课程简介

  Course(this.id, this.name,this.teacher_name,this.institute,this.description);


   factory Course.fromJson(Map<String, dynamic> course) =>
       new Course(_toInt(course['id']), course['name'],course['institute'],course['teacher_name'],course['description']);

   Map toJson() => {'课程编号': id, '课程名称': name ,'开设院系': institute,'任课教师':teacher_name,'课程简介': description};
}

   int _toInt(id) => id is int ? id : int.parse(id);
