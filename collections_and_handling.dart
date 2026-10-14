void main() {
  print('--- Collections and Error Handling ---');

  // 1. Typed Lists and iteration
  List<String> techInterests = ['Dart', 'Flutter', 'Python', 'Docker'];
  print('Tech Stack Interests:');
  
  // For-in loop iteration
  for (String tech in techInterests) {
    print(' - Master $tech');
  }

  // 2. Typed Maps (Key-Value pairs)
  Map<String, dynamic> projectProfile = {
    'title': 'MyAuto Ride Platform',
    'version': 1.0,
    'isActive': true,
    'contributorsCount': 2
  };

  print('\nProject Configuration Profile:');
  projectProfile.forEach((key, value) {
    print(' $key : $value');
  });


  print('\nExecuting Safe Parsing Division:');
  try {
    String inputVal = "100";
    int parsedNumber = int.parse(inputVal);
    int divisionResult = parsedNumber ~/ 0; 
    print('Result: $divisionResult');
  } on FormatException catch (e) {
    print('Format error encountered: ${e.message}');
  } catch (e) {
    print('Caught an unexpected exception: $e');
  } finally {
    print('Execution complete safely with exception handling checks.');
  }
}