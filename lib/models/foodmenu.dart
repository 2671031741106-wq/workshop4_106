
enum FoodType {
  ttype1(ty: "ต้ม"),
  ttype2(ty: "สุขภาพ"),
  ttype3(ty: "สเต็ก"),
  ttype4(ty: "ฟาสต์ฟู้ด"),
  ttype5(ty: "ก๋วยเตี๋ยว");

  const FoodType({required this.ty});

  final String ty;
}

enum Foodpic {
  menu1(namefood: "สุกี้", image: "assets/images/1.png"),
  menu2(namefood: "สลัดรวม", image: "assets/images/2.png"),
  menu3(namefood: "สเต็กหมู", image: "assets/images/3.png"),
  menu4(namefood: "สเต็กเนื้อ", image: "assets/images/4.png"),
  menu5(namefood: "แฮมเบอร์เกอร์", image: "assets/images/5.png"),
  menu6(namefood: "พิซซ่า", image: "assets/images/6.png"),
  menu7(namefood: "ก๋วยเตี๋ยว", image: "assets/images/7.png");

  const Foodpic({
    required this.image,
    required this.namefood,
  });

  final String image;
  final String namefood;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.foodType,
    required this.component,
    required this.price,
    required this.foodpic,
  });

  String name;
  FoodType foodType;
  String component;
  int price;
  Foodpic foodpic;
}

List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้ผักรวม",
    foodType: FoodType.ttype1,
    component: "ไข่ไก่,เกี๊ยวกุ้ง,ปูอัด,เบคอน,ผักสด",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  FoodMenu(
    name: "สลัดผัก",
    foodType: FoodType.ttype2,
    component: "แครอท,มะเขือเทศ,ผักรวม",
    price: 159,
    foodpic: Foodpic.menu2,
  ),
  FoodMenu(
    name: "สเต็กหมู",
    foodType: FoodType.ttype3,
    component: "สะโพกหมู 120 กรัม,เฟรนช์ฟรายส์,ผักเคียง",
    price: 299,
    foodpic: Foodpic.menu3,
  ),
  FoodMenu(
    name: "สเต็กเนื้อ",
    foodType: FoodType.ttype3,
    component: "สันคอวัว 120 กรัม,ไข่ดาว,เบคอน",
    price: 389,
    foodpic: Foodpic.menu4,
  ),
  FoodMenu(
    name: "แฮมเบอร์เกอร์",
    foodType: FoodType.ttype4,
    component: "ขนมปัง,หมูแผ่นเบอร์เกอร์,ชีส",
    price: 189,
    foodpic: Foodpic.menu5,
  ),
  FoodMenu(
    name: "พิซซ่า",
    foodType: FoodType.ttype4,
    component: "แป้งพิซซ่า,เบคอน,พริก",
    price: 139,
    foodpic: Foodpic.menu6,
  ),
  FoodMenu(
    name: "ก๋วยเตี๋ยวต้มยำ",
    foodType: FoodType.ttype5,
    component: "เส้นเล็ก,ไข่ต้ม,ลูกชิ้น,หมูสไลด์",
    price: 88,
    foodpic: Foodpic.menu7,
  ),
];
