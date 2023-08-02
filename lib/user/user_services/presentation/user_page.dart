import 'package:auto_route/auto_route.dart';
import 'package:barbershop_frontend/app_router.gr.dart';
import 'package:barbershop_frontend/shops/shared/providers.dart';
import 'package:barbershop_frontend/user/user_services/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserPage extends ConsumerStatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ConsumerState<UserPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.microtask(() => ref
  //       .watch(shopNotifierProvider.notifier)
  //       .getShop("61bb2bad6c7c77893b6a02d3"));
  // }

  @override
  Widget build(BuildContext context) {
    final shop = ref.watch(shopNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title:const Text("profile"),
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).push(const UsersRoute());
              },
              icon:const Icon(Icons.people))
        ],
      ),
      body: SafeArea(
        child: shop.maybeWhen(
          orElse: () => const Center(child: Text('fghgv'),),
          initial: () => const Center(child: Text("initial")),
          loadInProgress: () =>
              const Center(child: CircularProgressIndicator()),
          // loadSuccess: (data) => Center(child: Text(data.services.toString())),
          failure: (message) => Center(child: Text(message)),
        ),
      ),
    );
  }
}
