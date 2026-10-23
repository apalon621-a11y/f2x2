import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  final List<Map<String, String>> contacts = const [
    {'name': 'Данил Колбосенко', 'phone': '+996 555 123 456'},
    {'name': 'Кристина Роналдо', 'phone': '+996 700 234 567'},
    {'name': 'Пидор', 'phone': '+996 777 345 678'},
    {'name': 'Сократ', 'phone': '+996 550 456 789'},
    {'name': 'Микрозайм', 'phone': '+996 990 567 890'},
    {'name': 'Огузек', 'phone': '+996 707 678 901'},
    {'name': 'Мошеники', 'phone': '+996 559 789 012'},
    {'name': 'Скала', 'phone': '+996 772 890 123'},
    {'name': 'Путин', 'phone': '+996 500 901 234'},
    {'name': 'Интрижка', 'phone': '+996 555 012 345'},
    {'name': 'Серезка', 'phone': '+996 700 111 222'},
    {'name': 'Мильфа', 'phone': '+996 777 222 333'},
    {'name': 'Жена', 'phone': '+996 550 333 444'},
    {'name': 'Любимая Бывшая', 'phone': '+996 990 444 555'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Контакты'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: Text(contact['name']![0]),
            ),
            title: Text(contact['name']!),
            subtitle: Text(contact['phone']!),
          );
        },
      ),
    );
  }
}