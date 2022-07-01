import 'package:crud/components/user_tile.dart';
import 'package:crud/model/user.dart';
import 'package:crud/provider/users.dart';
import 'package:crud/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users user = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuarios '),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: user.count,
        itemBuilder: (ctx, i) => UserTile(user.byIndex(i)),
      ),
    );
  }
}
