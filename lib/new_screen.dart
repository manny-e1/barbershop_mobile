import 'package:auto_route/auto_route.dart';
import 'package:barbershop_frontend/app_router.gr.dart';
import 'package:barbershop_frontend/user/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewPage extends ConsumerWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final s = ref.watch(authNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).push(const UserRoute());
              },
              icon: const Icon(Icons.forward))
        ],
      ),
      body: Container(
        color: Colors.black,
        height: double.maxFinite,
        width: double.maxFinite,
        child: TextButton(
          child: const Text('logout'),
          onPressed: () {
            s.signOut();
          },
        ),
      ),
    );
  }
}
