import 'package:communication_client/feature/post/presentation/detail_post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../domain/entities/post/post_entity.dart';

class PostItem extends StatelessWidget {
  final PostEntity postEntity;
  const PostItem({super.key, required this.postEntity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => DatailPostScreen(
                      id: postEntity.id.toString(),
                    ))));
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(postEntity.name),
              Text(postEntity.preContent ?? ''),
              Text("Автор: ${postEntity.autor?.id ?? ' '}"),
            ],
          ),
        ),
      ),
    );
  }
}
