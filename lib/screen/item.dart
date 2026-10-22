import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/foodmenu.dart';
import 'addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // กำหนดสีพื้นหลังตามประเภทอาหาร
  Color getColor(String type) {
    switch (type) {
      case "ต้ม":
        return Colors.lightBlueAccent;
      case "สุขภาพ":
        return Colors.lightGreenAccent;
      case "สเต็ก":
        return Colors.orangeAccent;
      case "ฟาสต์ฟู้ด":
        return Colors.redAccent;
      case "ก๋วยเตี๋ยว":
        return Colors.pink.shade100;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: emp.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: getColor(emp[index].foodType.ty),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            emp[index].name,
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            emp[index].component,
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "ประเภทอาหาร : ${emp[index].foodType.ty}",
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "ราคา : ${emp[index].price} บาท",
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      emp[index].foodpic.image,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 80,
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 40,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddForm()));
            },
          ),
        ),
      ],
    );
  }
}