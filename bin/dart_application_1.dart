import 'dart:io';

class Student {
  String name;
  int score;

  Student(this.name, this.score);
}

class StudentManagement {
  List<Student> students = [];

  void addStudent(String name, int score) {
    students.add(Student(name, score));
  }

  void studentsList() {
    for (var student in students) {
      print(
        '이름: ${student.name}, 점수: ${student.score}',
      );
    }
  }

  double average() {
    int sum = 0;
    for (var student in students) {
      sum += student.score;
    }
    return sum / students.length;
  }
}

void main() {

  StudentManagement studentManagement = StudentManagement();

  for (;;) {
    showMenu();

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write('학생 이름을 입력하세요:');
      String name = stdin.readLineSync()!;
      stdout.write('학생 점수를 입력하세요:');
      int score = int.parse(stdin.readLineSync()!,);
      print('$name학생이 추가되었습니다.');
      studentManagement.addStudent(name, score);
    } else if (choice == 2) {
      print('학생 목록: ');
      studentManagement.studentsList();
    } else if (choice == 3) {
      print('평균 점수: ${studentManagement.average()}');
    } else if (choice == 4) {
      print('프로그램을 종료합니다.');
      break;
    }
  }
}

void showMenu() {
  print('학생 성적 관리 프로그램');
  print('1. 학생 추가');
  print('2. 학생 목록 출력');
  print('3. 평균 점수계산');
  print('4. 종료');
  print('메뉴를 선택하세요:');
}
