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
      description: "여러분의 멘토가 되어 감격스러운 38살의 교수님 사만다입니다! 저의 열정은 교육에 있으며, 저는 여러분을 앞으로의 흥미진진한 여정을 안내하기 위해 여기에 왔습니다. 여러분의 관심사를 탐색하고, 목표를 정하고, 이 멘토 관계의 경험을 최대한 활용해봅시다. 이 교육적인 모험을 함께 시작할 준비가 되어 있습니다!",
      username: "@potatoChipsLover09",
      profilepic: "lib/images/pp2.jpg"
      ),
  
  Mentor(
      name: "로버트",
      age: 63,
      job: "회계사",
      description: "저는 은퇴한 회계사인 로버트라고 합니다. 저는 금융계를 돌아다녔기 때문에 건전한 재정 결정의 중요성을 이해했습니다. 여러분의 목표와 여러분이 여행의 재정적 측면을 탐색하는 데 도움을 줄 수 있는 방법에 대해 이야기합시다. 멘토가 되어 기쁩니다.",
      username: "@robertIsARobber",
      profilepic: "lib/images/pp3.jpg"),

  Mentor(
      name: "로사",
      age: 58,
      job: "심리 상담사",
      description: "저는 수십 년의 경험을 가진 심리학자 로사입니다. 자기 발견과 성장의 이 여정에 여러분의 멘토가 되어 영광입니다. 여러분의 열망, 감정, 그리고 여러분이 직면할 수 있는 도전에 대해 자세히 알아봅시다. 제 목표는 우리가 이 변혁적 과정을 함께 헤쳐나갈 때 지지와 통찰력을 제공하는 것입니다. 연결되기를 기대하고 있습니다!",
      username: "@justLikeRosalinda",
      profilepic: "lib/images/pp4.jpg"),

  Mentor(
      name: "캐롤라인",
      age: 34,
      job: "세무사",
      description: "저는 세무사인 캐롤라인입니다. 세금의 복잡함을 풀어주는 것이든 삶의 목표에 대해 토론하는 것이든, 저는 여러분을 위해 여기에 있습니다. 이 멘토링 여행을 생산적이고 즐겁게 만들어 봅시다. 여러분이 멘토링을 통해 기대하는 한 가지는 무엇인가요?",
      username: "@carolineTheMovie",
      profilepic: "lib/images/pp5.jpg"),

  Mentor(
      name: "마틴",
      age: 31,
      job: "창업자",
      description: "저는 스타트업 CEO인 마틴이고, 제 경험과 통찰력을 여러분과 공유하고자 합니다! 여러분이 기업가 정신, 리더십 또는 스타트업 세계를 탐색하는 것에 대해 궁금하시든, 제가 여러분의 도움을 받을 수 있습니다. 여러분의 야망과 역동적인 스타트업 환경에서 여러분이 성공할 수 있도록 어떻게 도울 수 있는지에 대해 이야기 해봅시다. 이 흥미로운 여정을 함께 시작할 준비가 되었나요?",
      username: "@matinKim999",
      profilepic: "lib/images/pp6.jpg"),
];
