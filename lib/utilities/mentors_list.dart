class Mentor {
  String name;
  int age;
  String job;
  String description;
  String username;
  String profilepic;

  Mentor({
    required this.name,
    required this.age,
    required this.job,
    required this.description,
    required this.username,
    required this.profilepic,
  });
}

List<Mentor> mentorsList = [
  Mentor(
      name: "존",
      age: 45,
      job: "변호사",
      description: "  45세의 변호사인 존입니다. 보호가 종료 아이들에게 멘토로서 손을 내밀고 싶습니다. 법학을 전공한 경험을 바탕으로, 저는 독특한 시각과 풍부한 지식을 가지고 이러한 어린 개인들이 권리, 책임, 법적 체계의 복잡성을 탐색하는 것을 포함한 성인의 법적 측면을 통해 지도하고 지원할 수 있도록 돕습니다. 저는 그들이 법적 권리를 이해할 수 있도록 돕고, 정보에 입각한 결정을 내릴 수 있도록 힘을 실어주며, 그들이 독립적이고 책임감 있는 성인으로 변화함에 따라 강력한 기반을 갖도록 하는데 전념하고 있습니다.",
      username: "@johnnyboy12345",
      profilepic: "lib/images/pp1.jpg",
      ),
  
  Mentor(
      name: "사만다",
      age: 38,
      job: "교수",
      description: "hi",
      username: "@potatoChipsLover09",
      profilepic: "lib/images/pp2.jpg"
      ),
  
  Mentor(
      name: "로버트",
      age: 63,
      job: "회계사",
      description: "hi",
      username: "@robertIsARobber",
      profilepic: "lib/images/pp3.jpg"),

  Mentor(
      name: "로사",
      age: 58,
      job: "심리 상담사",
      description: "hi",
      username: "@justLikeRosalinda",
      profilepic: "lib/images/pp4.jpg"),

  Mentor(
      name: "카롤라인",
      age: 34,
      job: "세무사",
      description: "hi",
      username: "@carolineTheMovie",
      profilepic: "lib/images/pp5.jpg"),

  Mentor(
      name: "마틴",
      age: 31,
      job: "창업자",
      description: "hi",
      username: "@matinKim999",
      profilepic: "lib/images/pp6.jpg"),
];
