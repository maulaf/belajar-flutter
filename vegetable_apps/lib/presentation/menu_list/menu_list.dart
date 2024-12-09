import 'package:flutter/material.dart';
import 'package:vegetable_apps/presentation/item_detail/item_detail_page.dart';

class ManuList extends StatefulWidget {
  const ManuList({super.key});

  @override
  State<ManuList> createState() => _ManuListState();
}

class _ManuListState extends State<ManuList> {
  List<String> listGambar = [
    'assets/images/food.jpg',
    'assets/images/food1.jpg',
    'assets/images/food2.jpg',
    'assets/images/food3.jpg',
    'assets/images/food4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: listGambar.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            childAspectRatio: 1, // Adjust aspect ratio
            crossAxisSpacing: 10, // Spacing between columns
            mainAxisSpacing: 10, // Spacing between rows
          ),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ItemDetailPage(
                    imageUrl: listGambar[index], // Pass image URL or other data
                  ),
                ),
              );
            },
            child: ListImageItem(
              listGambar: listGambar,
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    super.key,
    required this.listGambar,
    required this.index,
  });

  final List<String> listGambar;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        color: Colors.grey[200], // Background color as a placeholder
      ),
      clipBehavior: Clip.antiAlias, // Clip content to rounded corners
      child: Image.asset(
        listGambar[index],
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Icon(
          Icons.broken_image,
          size: 50,
          color: Colors.grey,
        ), // Fallback for missing images
      ),
    );
  }
}

class ItemDetailPage extends StatelessWidget {
  final String imageUrl;

  const ItemDetailPage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Center(
        child: Image.asset(
          imageUrl,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.broken_image,
            size: 100,
            color: Colors.grey,
          ), // Fallback for missing images
        ),
      ),
    );
  }
}
