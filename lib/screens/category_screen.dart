import 'package:flutter/material.dart';
import '../widgets/news_item.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryTitle;

  const CategoryScreen({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    
    final Map<String, List<Map<String, String>>> categoryNews = {
      "General": [
        {
          
          "title": "General News 1",
          "subtitle": "General update here",
          "imageUrl": "https://marketplace.canva.com/ghVKU/MAEKBbghVKU/1/tl/canva-sea-waves-on-the-beautiful-morning-sea-MAEKBbghVKU.jpg",
        },
        {
          "title": "General News 2",
          "subtitle": "Another general update",
          "imageUrl": "https://picsum.photos/200/300?random=22",
        },
      ],
      "Sports": [
        {
          "title": "Sports News 1",
          "subtitle": "Football, Basketball and more",
          "imageUrl": "https://png.pngtree.com/element_pic/00/16/06/14575f522eb3f0d.jpg",
        },
        {
          "title": "Sports News 2",
          "subtitle": "Latest sports highlights",
          "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8zfnCtuOdamHFfM5BZ6eqmMt9VK27Jc1yUA&s",
        },
      ],
      "Business": [
        {
          "title": "Stock Market Update",
          "subtitle": "Business world news today",
          "imageUrl": "https://picsum.photos/200/300?random=25",
        },
      ],
      "Technology": [
        {
          "title": "Tech Innovations",
          "subtitle": "AI, gadgets, and more",
          "imageUrl": "https://picsum.photos/200/300?random=26",
        },
      ],
      "Entertainment": [
        {
          "title": "Movie Releases",
          "subtitle": "New movies this week",
          "imageUrl": "https://picsum.photos/200/300?random=27",
        },
      ],
      "Health": [
        {
          "title": "Health Tips",
          "subtitle": "How to stay healthy",
          "imageUrl": "https://picsum.photos/200/300?random=28",
        },
      ],
    };

    final newsList = categoryNews[categoryTitle] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: newsList.isEmpty
          ? const Center(child: Text("No news available"))
          : ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final news = newsList[index];
                return NewsItem(
                  title: news["title"]!,
                  subtitle: news["subtitle"]!,
                  imageUrl: news["imageUrl"]!,
                );
              },
            ),
    );
  }
}