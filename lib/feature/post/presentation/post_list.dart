import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/app/presentation/components/app_loader.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/feature/post/presentation/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/state/post_state/post_bloc.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostBloc, PostState>(listener: (context, state) {
      if (state.asyncSnapshot?.hasError ?? false) {
        showErrorSnackBar(
            context, ErrorEntity.fromException(state.asyncSnapshot?.error));
      }
    }, builder: (context, state) {
      if (state.postList.isNotEmpty) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: NotificationListener<ScrollEndNotification>(
            onNotification: (notification) {
              if (notification.metrics.maxScrollExtent ==
                  notification.metrics.pixels) {
                context.read<PostBloc>().add(PostEvent.fetch());
                return true;
              }
              return false;
            },
            child: ListView.builder(
                //shrinkWrap: true,
                itemCount: state.postList.length,
                itemBuilder: ((context, index) {
                  return PostItem(postEntity: state.postList[index]);
                })),
          ),
        );
      }
      if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
        return const AppLoader();
      }
      return const SizedBox.shrink();
    });
  }
}
