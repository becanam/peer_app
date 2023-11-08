class Mentor {
  String name;
  int age;
  String job;
  String description;
  String profilepic;

  Mentor({
    required this.name,
    required this.age,
    required this.job,
    required this.description,
    required this.profilepic,
  });
}

List<Mentor> mentorsList = [
  Mentor(
      name: "존",
      age: 45,
      job: "회계사",
      description: "hi",
      profilepic: "lib/images/pp1.jpg"),
  
  Mentor(
      name: "사만다",
      age: 38,
      job: "회계사",
      description: "hi",
      profilepic: "lib/images/pp2.jpg"),
  
  Mentor(
      name: "로버트",
      age: 63,
      job: "회계사",
      description: "hi",
      profilepic: "lib/images/pp3.jpg"),

  Mentor(
      name: "로사",
      age: 58,
      job: "회계사",
      description: "hi",
      profilepic: "lib/images/pp4.jpg"),

  Mentor(
      name: "카롤라인",
      age: 34,
      job: "회계사",
      description: "hi",
      profilepic: "lib/images/pp5.jpg"),

  Mentor(
      name: "마틴",
      age: 31,
      job: "회계사",
      description: "hi",
      profilepic: "lib/images/pp6.jpg"),
];
