import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const NewsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      trailing: Image.network(
        imageUrl,
        width: 80,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.broken_image),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}