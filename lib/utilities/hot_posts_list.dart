class HotPost {
  String name;
  String type;
  String content;
  String url;

  HotPost({
    required this.name,
    required this.type,
    required this.content,
    required this.url,
  });
}

List<HotPost> hotPostsList = [
  HotPost(
      name: "nachoQueso123",
      type: "장학금",
      content: "10월 31일 11시59분까지 신청 받고 있으니까 소득분위, 자소서 내용, 필수 서류 확인해서 제출하세요!",
      url: "yoonseiunivscholarships.com"
      ),
  HotPost(
      name: "yoonie99",
      type: "대외활동",
      content: "ABK기업의 홍보대사로 활동해서 활동 인증서 받아가세요!",
      url: "yoonseiunivcareer.com"
      ),
  HotPost(
      name: "roblox419",
      type: "진로",
      content: "11월 15일 YSY재단에서 자립준비청년들을 위해 모의 면접 기회를 드리고 있으니 꼭 신청해보세요!",
      url: "yoonseiunivcareer.com"
      ),
  HotPost(
      name: "bananaApplepie",
      type: "장학금",
      content: "12월 02일 부터 JPG 기업에서 32기 멘토링 장학생들을 모집할 예정이오니 관심 있는 분들을 자격 요건 확인해보세요!",
      url: "yoonseiunivscholarships.com"
      ),
];
