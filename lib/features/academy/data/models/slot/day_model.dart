import 'package:academy/features/academy/data/models/slot/timing_model.dart';
import 'package:academy/features/academy/domain/entities/slot/day.dart';

class DayModel extends Day {
  DayModel({required super.dayName, required super.timings});

  DayModel copyWith({
    String? dayName,
    List<TimingModel>? timings,
  }) {
    return DayModel(
      dayName: dayName ?? this.dayName,
      timings: timings ?? this.timings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dayName': dayName,
      'timings': timings.map((e) => (e as TimingModel).toMap()),
    };
  }

  factory DayModel.fromMap(Map<String, dynamic> map) {
    return DayModel(
      dayName: map['dayName'] as String,
      timings: map['timings'] as List<TimingModel>,
    );
  }
}
