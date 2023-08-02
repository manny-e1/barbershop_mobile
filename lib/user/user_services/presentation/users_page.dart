import 'package:auto_route/auto_route.dart';
import 'package:barbershop_frontend/appointment/shared/providers.dart';
import 'package:barbershop_frontend/review/core/shared/providers.dart';
import 'package:barbershop_frontend/shops/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersPage extends ConsumerStatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends ConsumerState<UsersPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        ref.watch(barberReviewNotifierProvider.notifier).getReviews("61bdc6db380f8f8c9ce94b73"));
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(barberReviewNotifierProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('users'),
        ),
        body: SafeArea(
          child: user.maybeWhen(
            orElse: () => Container(),
            initial: () => const Center(child: Text("initial")),
            loadInProgress: () =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (data) => ListView.builder(
              itemBuilder: (context, index) {
                final user = data[index];
                return ListTile(
                  title: Text(user.reviewText),
                  subtitle: Text(user.rating.toString()),
                );
              },
              itemCount: data.length,
            ),
            failure: (message) => Center(child: Text(message)),
          ),
        ),
      ),
    );
  }
}
