void main() {

  String studentName = "Kasinathan";
  int studentAge = 20;
  double cgpaScore = 9.56;
  bool isEnrolled = true;


  print('--- Student Profile ---');
  print('Name: $studentName (Type: ${studentName.runtimeType})');
  print('Age: $studentAge (Type: ${studentAge.runtimeType})');
  print('CGPA: $cgpaScore (Type: ${cgpaScore.runtimeType})');
  print('Active Status: $isEnrolled (Type: ${isEnrolled.runtimeType})');


  const String universityName = "APJ Abdul Kalam Technological University";
  final DateTime sessionDate = DateTime.now();

  print('\n--- Institutional Details ---');
  print('University: $universityName');
  print('Session Init Time: $sessionDate');


  int baseCredits = 18;
  int extraCredits = 4;
  int totalCredits = baseCredits + extraCredits;
  print('\nTotal Semester Credits: $totalCredits');
}