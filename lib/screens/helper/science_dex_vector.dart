enum ScienceDexVector {
  arrow_back,
}

extension ImageVectorExtension on ScienceDexVector {
  String get svg => "assets/icons/$name.svg";

  String get package => "assets";
}
