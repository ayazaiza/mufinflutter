import 'package:academy/features/academy/domain/entities/slot/student_times.dart';

class Timing {
  final String name;
  final String timingId;
  final List<StudentTimes> studentTimes;

  Timing(
      {required this.name, required this.timingId, required this.studentTimes});


}
