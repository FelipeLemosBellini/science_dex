import 'dart:convert';

class PeriodEntity {
  final int? id;
  final String periodName;
  final DateTime startDate;
  final DateTime endDate;
  final String category;
  final int targetOne;
  final int targetTwo;

  PeriodEntity({
    this.id,
    required this.periodName,
    required this.startDate,
    required this.endDate,
    required this.category,
    required this.targetOne,
    required this.targetTwo,
  });

  String datePresentation() {
    String firstDate = '${startDate.day}/${startDate.month}/${startDate.year}';
    String secondDate = '${endDate.day}/${endDate.month}/${startDate.year}';
    return '$firstDate à $secondDate';
  }

  Map<String, Object> toMap() {
    return <String, Object>{
      "periodName": periodName,
      "startDate": startDate.toIso8601String(),
      "endDate": endDate.toIso8601String(),
      "category": category,
      "targetOne": targetOne,
      "targetTwo": targetTwo
    };
  }

  factory PeriodEntity.fromMap(Map<String, dynamic> map) {
    return PeriodEntity(
      id: map['id'],
      periodName: map['periodName'],
      startDate: DateTime.parse(map['startDate']),
      endDate: DateTime.parse(map['endDate']),
      category: map['category'],
      targetOne: map['targetOne'],
      targetTwo: map['targetTwo'],
    );
  }
}
