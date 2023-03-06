import 'package:communication_client/app/presentation/components/app_loader.dart';
import 'package:communication_client/feature/post/presentation/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/state/post_state/post_bloc.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostBloc, PostState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.postList.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  //shrinkWrap: true,
                  itemCount: state.postList.length,
                  itemBuilder: ((context, index) {
                    return PostItem(postEntity: state.postList[index]);
                  })),
            );
          }
          if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
            return const AppLoader();
          }
          return const SizedBox.shrink();
        });
  }
}
