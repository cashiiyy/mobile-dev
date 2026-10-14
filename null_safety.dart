void main() {
  print('--- Null Safety Demonstrations ---');

  
  String mandatoryID = "SCT25CS001";
  print('Mandatory Student ID: $mandatoryID');

  String? middleName;
  print('Middle Name (Initially Null): $middleName');


  middleName = "Pradeep";
  print('Middle Name (Assigned): $middleName');


  String? nickName;
  String displayNick = nickName ?? "No Nickname Provided";
  print('Display Nickname: $displayNick');


  String? bioText = "Information Science Engineering Student";
  

  int? bioLength = bioText?.length;
  print('Bio length via conditional access: $bioLength');

  
  if (bioText != null) {

    print('Uppercase Bio: ${bioText.toUpperCase()}');
  }
}