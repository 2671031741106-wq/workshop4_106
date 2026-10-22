import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/friend.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        final f = friends[index];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index.isEven ? Colors.teal : Colors.deepPurple,
          ),
          child: Row(
            children: [
              // ข้อมูลอยู่ซ้าย
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      f.name,
                      style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "ชื่อเล่น : ${f.nickname}",
                      style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                    Text(
                      "อายุ : ${f.age} ปี",
                      style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "บ้านเกิด : ${f.hometown}",
                      style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "อาหารที่ชอบ : ${f.food}",
                      style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "กิจกรรมที่ชอบ : ${f.hobby}",
                      style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              // รูปอยู่ทางขวา (โหลดจาก URL)
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  f.imageUrl,
                  width: 110,
                  height: 140,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const SizedBox(
                      width: 110,
                      height: 140,
                      child: Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 110,
                      height: 140,
                      child: Icon(Icons.broken_image,
                          color: Colors.white, size: 40),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}