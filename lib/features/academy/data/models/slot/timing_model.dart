import 'package:academy/features/academy/data/models/slot/student_times_model.dart';
import 'package:academy/features/academy/domain/entities/slot/timing.dart';

class TimingModel extends Timing {
  TimingModel(
      {required super.name,
      required super.timingId,
      required super.studentTimes});

  TimingModel copyWith({
    String? name,
    String? timingId,
    List<StudentTimesModel>? studentTimes,
  }) {
    return TimingModel(
      name: name ?? this.name,
      timingId: timingId ?? this.timingId,
      studentTimes: studentTimes ?? this.studentTimes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'timingId': timingId,
      'studentTimes': studentTimes.map((e) => (e as StudentTimesModel).toMap()),
    };
  }

  factory TimingModel.fromMap(Map<String, dynamic> map) {
    return TimingModel(
      name: map['name'] ?? "",
      timingId: map['timingId'] ?? "",
      studentTimes: map['studentTimes'] ?? [],
    );
  }
}
