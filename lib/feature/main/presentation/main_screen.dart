import 'package:flutter/material.dart';

import '../../auth/domain/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  final UserEntity userEntity;
  const MainScreen({super.key, required this.userEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MainScreen')),
      body: Center(child: Text(userEntity.userName)),
    );
  }
}
