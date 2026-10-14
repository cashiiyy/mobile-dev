/// Script 3: Functions with Parameters and Return Types
/// Demonstrates explicit typing for inputs/outputs and optional parameters.

// 1. Standard function with explicit parameter types and return type
double calculateSemesterPercentage(int securedMarks, int maxMarks) {
  if (maxMarks <= 0) {
    return 0.0;
  }
  return (securedMarks / maxMarks) * 100;
}

// 2. Function with optional positional parameter and null check
String formatStudentRecord(String name, [String? department]) {
  // Using null-coalescing to handle optional parameter default fallback
  String dept = department ?? "Unassigned Department";
  return "Student: $name | Department: $dept";
}

// 3. Arrow function (shorthand syntax) for simple calculations
int computeSquareCode(int value) => value * value;

void main() {
  print('--- Function Demonstrations ---');

  // Testing percentage calculator function
  double percentage = calculateSemesterPercentage(445, 500);
  print('Calculated Percentage: ${percentage.toStringAsFixed(2)}%');

  // Testing optional parameter function
  print(formatStudentRecord("Kasinathan", "Information Science"));
  print(formatStudentRecord("Adithya")); // Without optional parameter

  // Testing arrow function
  int squaredValue = computeSquareCode(12);
  print('Square of 12: $squaredValue');
}