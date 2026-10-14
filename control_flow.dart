
void main() {
  print('--- Control Flow & Logic Demonstrations ---');

  // 1. If-Else Conditional Branching
  int semesterGpa = 9;
  print('Evaluating GPA: $semesterGpa');

  if (semesterGpa >= 9) {
    print('Grade Evaluation: Outstanding Academic Performance (S Grade)');
  } else if (semesterGpa >= 7) {
    print('Grade Evaluation: Very Good Performance (A Grade)');
  } else {
    print('Grade Evaluation: Satisfactory / Needs Improvement');
  }

  // 2. Switch Statement with Pattern Matching / Expressions
  String gradeLetter = 'A';
  print('\nEvaluating Grade Letter: $gradeLetter');
  
  switch (gradeLetter) {
    case 'S':
      print('Performance tier: Exceptional');
      break;
    case 'A':
      print('Performance tier: Excellent');
      break;
    case 'B':
      print('Performance tier: Good');
      break;
    default:
      print('Performance tier: Standard Pass');
  }

  // 3. Loops (For-loop and While-loop)
  print('\nIterating through Lab Modules (For Loop):');
  for (int module = 1; module <= 4; module++) {
    print('-> Processing Module $module complete.');
  }

  print('\nCountdown timer simulation (While Loop):');
  int countdown = 3;
  while (countdown > 0) {
    print('Starting compilation in $countdown...');
    countdown--;
  }
  print('Compilation Live!');
}