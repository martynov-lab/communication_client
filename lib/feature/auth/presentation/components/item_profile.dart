import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:communication_client/feature/auth/presentation/components/card_profile.dart';
import 'package:flutter/material.dart';

class ItemProfile extends StatelessWidget {
  final UserEntity? user;
  const ItemProfile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardProfile(
          label: 'Имя:',
          value: user?.firstname ?? '',
        ),
        const SizedBox(height: 20),
        CardProfile(
          label: 'Фамилия:',
          value: user?.surname ?? '',
        ),
        const SizedBox(height: 20),
        CardProfile(
          label: 'Email:',
          value: user?.email ?? '',
        ),
        const SizedBox(height: 20),
        CardProfile(
          label: 'Телефон:',
          value: user?.phoneNumber ?? '',
        ),
      ],
    );
  }
}
