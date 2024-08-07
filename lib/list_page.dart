import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'name': 'Перемещение 1', 'description': 'Контрагент 1'},
      {'name': 'Перемещение 2', 'description': 'Контрагент 1'},
      {'name': 'Перемещение 3', 'description': 'Контрагент 3'},
      {'name': 'Перемещение 4', 'description': 'Контрагент 4'},
      {'name': 'Перемещение 5', 'description': 'Контрагент 5'},
      {'name': 'Перемещение 6', 'description': 'Контрагент 6'},
      {'name': 'Перемещение 7', 'description': 'Контрагент 7'},
      {'name': 'Перемещение 8', 'description': 'Контрагент 8'},
      {'name': 'Перемещение 9', 'description': 'Контрагент 9'},
      {'name': 'Перемещение 10', 'description': 'Контрагент 10'},
      {'name': 'Перемещение 11', 'description': 'Контрагент 11'},
      {'name': 'Перемещение 12', 'description': 'Контрагент 12'}
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Список задач'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Card(
                margin: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item['description']!,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/arCameraPage');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Go to AR Camera'),
            ),
          ),
        ],
      ),
    );
  }
}
