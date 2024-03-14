class PeriodEntity {
  final int id;
  final String periodName;
  final DateTime startDate;
  final DateTime endDate;
  final String category;
  final int targetOne;
  final int targetTwo;

  PeriodEntity({
    required this.id,
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
}
