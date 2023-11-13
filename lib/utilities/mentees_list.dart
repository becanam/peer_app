class Mentee {
  String name;
  int age;
  String job;
  String description;
  String username;
  String profilepic;

  Mentee({
    required this.name,
    required this.age,
    required this.job,
    required this.description,
    required this.username,
    required this.profilepic,
  });
}

List<Mentee> menteesList = [
  Mentee(
      name: "홍길동",
      age: 22,
      job: "대학교 2학년",
      description: "안녕하세요. 저의 홀로서기 과정에서 개인적 성장과 같은 분야에서 저를 지도해줄 멘토와 연결되고 싶습니다. 저의 관심사는 경제와 운동이며, 배려심 있는 멘토의 지지와 지혜 아래 배우고 성장할 수 있는 기회가 생겨 기쁩니다.",
      username: "@gildongboyy123",
      profilepic: "lib/images/user.jpeg",
      ),
  Mentee(
      name: "경재",
      age: 27,
      job: "취업준비생",
      description: "안녕하세요. 저의 홀로서기 과정에서 개인적 성장과 같은 분야에서 저를 지도해줄 멘토와 연결되고 싶습니다. 저의 관심사는 경제와 운동이며, 배려심 있는 멘토의 지지와 지혜 아래 배우고 성장할 수 있는 기회가 생겨 기쁩니다.",
      username: "@johnnyboy12345",
      profilepic: "lib/images/user.jpeg",
      ),
  Mentee(
      name: "한결",
      age: 26,
      job: "대학원생",
      description: "안녕하세요. 저의 홀로서기 과정에서 개인적 성장과 같은 분야에서 저를 지도해줄 멘토와 연결되고 싶습니다. 저의 관심사는 경제와 운동이며, 배려심 있는 멘토의 지지와 지혜 아래 배우고 성장할 수 있는 기회가 생겨 기쁩니다.",
      username: "@johnnyboy12345",
      profilepic: "lib/images/user.jpeg",
      ),
  Mentee(
      name: "민주",
      age: 21,
      job: "대학교 1학년",
      description: "안녕하세요. 저의 홀로서기 과정에서 개인적 성장과 같은 분야에서 저를 지도해줄 멘토와 연결되고 싶습니다. 저의 관심사는 경제와 운동이며, 배려심 있는 멘토의 지지와 지혜 아래 배우고 성장할 수 있는 기회가 생겨 기쁩니다.",
      username: "@johnnyboy12345",
      profilepic: "lib/images/user.jpeg",
      ),

];
