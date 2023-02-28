import 'package:communication_client/app/presentation/components/app_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';
import '../../auth/presentation/screen/user_screen.dart';
import '../../post/domain/state/post_state/post_cubit.dart';
import '../../post/presentation/post_list.dart';

class MainScreen extends StatelessWidget {
  final UserEntity userEntity;
  const MainScreen({super.key, required this.userEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_box,
              color: Colors.grey,
            ),
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const UserScreen())));
            }),
          ),
        ],
      ),
      body: const PostList(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AppDialog(
                    val1: "name",
                    val2: "content",
                    onPressed: (value1, value2) async {
                      context.read<PostCubit>().createPost({
                        "name": value1,
                        "content": value2,
                      });
                    },
                  ));
        },
      ),
    );
  }
}
