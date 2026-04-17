import 'package:flutter/material.dart';
import '../models/guide_model.dart';

class GuideDetailScreen extends StatelessWidget {
  final Guide guide;

  const GuideDetailScreen({required this.guide});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(guide.title),
      ),

      body: Container(
        width: double.infinity, // 🔥 QUAN TRỌNG
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                guide.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  guide.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  guide.description,
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  guide.content,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
