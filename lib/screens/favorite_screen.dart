import 'package:flutter/material.dart';
import '../data/guide_data.dart';
import '../models/guide_model.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 🔥 LỌC CHỈ NHỮNG MÓN ĐÃ YÊU THÍCH
    final List<Guide> favorites =
    guides.where((g) => g.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(title: Text("Danh sách yêu thích")),

      body: favorites.isEmpty
          ? Center(
        child: Text(
          "Chưa có mục yêu thích ❤️",
          style: TextStyle(fontSize: 16),
        ),
      )
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final guide = favorites[index];

          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                guide.imageUrl,
                width: 60,
                fit: BoxFit.cover,
              ),
              title: Text(guide.title),
              subtitle: Text(guide.description),

              trailing: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
