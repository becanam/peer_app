class Certificate {
  String name;
  int year;
  String result;

  Certificate({
    required this.name,
    required this.year,
    required this.result,
  });
}

List<Certificate> certificateList = [
  Certificate(
      name: "TOEFL",
      year: 2021,
      result: "116점",
      ),
  
  Certificate(
      name: "PHD",
      year: 2004,
      result: "연세대학교 공학사",
      ),
  
  Certificate(
      name: "EXCEL",
      year: 2017,
      result: "1급",),
];
