enum Gender {
  male,
  female,
  others;

  String get toName {
    switch (this) {
      case male:
        return "Male";
      case Gender.female:
        return "Female";
      case Gender.others:
        return "Others";
    }
  }

  factory Gender.wrap(String gender) {
    switch (gender) {
      case "male":
      case "Male":
        return Gender.male;
      case "Female":
      case "female":
        return Gender.female;
      case "Others":
      case "others":
        return Gender.others;
      default:
        return Gender.male;
    }
  }
}
