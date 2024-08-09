import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {

        final items = appMenuItems[index];
        return _CustomListTile(items: items);

      }
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.items,
  });

  final MenuItems items;

  @override
  Widget build(BuildContext context) {

    // final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(items.icon, color: Colors.teal),
      trailing: const Icon( Icons.arrow_forward_ios_rounded, color: Colors.teal,),
      title: Text(items.title, style: const TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(items.subtitle),
      onTap: () {

      },
    );
  }
}