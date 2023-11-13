class MenteeCertificate {
  String name;
  int year;
  String result;

  MenteeCertificate({
    required this.name,
    required this.year,
    required this.result,
  });
}

List<MenteeCertificate> menteeCertificateList = [
  MenteeCertificate(
      name: "TOEFL",
      year: 2021,
      result: "116점",
      ),
  
  MenteeCertificate(
      name: "알바",
      year: 2020,
      result: "편의점 알바",
      ),
  
  MenteeCertificate(
      name: "대학교 재학중",
      year: 2019,
      result: "연세대학교 경제학과",),
];
