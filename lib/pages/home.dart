import 'package:avatar_checkbok/data/contact.dart';
import 'package:avatar_checkbok/widgets/avatar_checkbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar checkbox'),
      ),
      body: ListView.builder(
        itemCount: listContact.length,
        itemBuilder: (BuildContext context, int index) {
          final isCheck = listContact[index].isCheck;
          final imageUrl = listContact[index].imageUrl;
          final name = listContact[index].name;
          return ListTile(
            leading: AvatarCheckbox(
              isCheck: isCheck,
              imageUrl: imageUrl,
              onTap: () {},
            ),
            title: Text(name),
          );
        },
      ),
    );
  }
}
