import 'package:communication_client/app/domain/error_entity/error_entity.dart';
import 'package:communication_client/app/presentation/components/app_loader.dart';
import 'package:communication_client/app/presentation/components/app_snackbar/top_snack_bar.dart';
import 'package:communication_client/feature/post/domain/repository/post_repository.dart';
import 'package:communication_client/feature/post/domain/state/detail_state/detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/init_di.dart';
import '../domain/state/post_state/post_bloc.dart';

class DatailPostScreen extends StatelessWidget {
  final String id;
  const DatailPostScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailCubit(locator.get<PostRepository>(), id)..fetchPost(),
      child: _DetailPostView(),
    );
  }
}

class _DetailPostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<DetailCubit>().deletePost().then((_) {
                context.read<PostBloc>().add(PostEvent.fetch());
                Navigator.of(context).pop();
              });
            },
            icon: const Icon(Icons.delete_outline_rounded),
          ),
        ],
      ),
      body: BlocConsumer<DetailCubit, DetailState>(
        listener: (context, state) {
          if (state.asyncSnapshot.hasError) {
            showErrorSnackBar(
                context, ErrorEntity.fromException(state.asyncSnapshot.error));
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          if (state.asyncSnapshot.connectionState == ConnectionState.waiting) {
            return const AppLoader();
          }
          if (state.postEntity != null) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    Text(state.postEntity?.name ?? ''),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(state.postEntity?.content ?? ''),
                  ]),
                ),
              ),
            );
          }

          return const Center(
            child: Text('Ошибка'),
          );
        },
      ),
    );
  }
}
