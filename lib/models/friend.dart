class Friend {
  Friend({
    required this.name,
    required this.nickname,
    required this.age,
    required this.hometown,
    required this.food,
    required this.hobby,
    required this.imageUrl,
  });
  final String name;
  final String nickname;
  final int age;
  final String hometown;
  final String food;
  final String hobby;
  final String imageUrl;
}

List<Friend> friends = [
  Friend(
    name: "สมชาย ใจดี",
    nickname: "ชาย",
    age: 20,
    hometown: "กรุงเทพมหานคร",
    food: "ผัดกะเพรา",
    hobby: "เล่นเกม ROV, ฟังเพลง",
    imageUrl: "https://i.pravatar.cc/300?img=12",
  ),
  Friend(
    name: "สมหญิง รักเรียน",
    nickname: "หญิง",
    age: 19,
    hometown: "เชียงใหม่",
    food: "ข้าวซอย",
    hobby: "ดูหนังแนวสืบสวน, เล่นแบดมินตัน",
    imageUrl: "https://i.pravatar.cc/300?img=47",
  ),
  Friend(
    name: "สมศักดิ์ มานะ",
    nickname: "ศักดิ์",
    age: 21,
    hometown: "ขอนแก่น",
    food: "ส้มตำ",
    hobby: "เล่นฟุตบอล, ฟังเพลง",
    imageUrl: "https://i.pravatar.cc/300?img=33",
  ),
];