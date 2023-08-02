import 'package:auto_route/auto_route.dart';
import 'package:barbershop_frontend/app_router.gr.dart';
import 'package:barbershop_frontend/user/auth/application/auth_notifier.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:barbershop_frontend/user/auth/presentation/widgets/rounded_text_field.dart';
import 'package:barbershop_frontend/user/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ref.listen<AuthState>(authNotifierProvider, (prev, current) {
    //   current.whenOrNull(failure: (failure) {
    //     Future.microtask(() => ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text(failure))));
    //   });
    // });
    debugPrint("here");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(builder: (context, ref, _) {
            final validator = ref.watch(authValidationProvider);

            return Column(
              children: [
                RoundedTextField.email(
                    controller: emailController,
                    onChange: validator.validateEmail,
                    labelText: 'email;',
                    errorText: validator.email.error),

                RoundedTextField.password(
                  controller: passwordController,
                  labelText: 'password',
                ),

                // Container(
                //   child: ref.watch(authNotifierProvider).maybeWhen(orElse: () => const SizedBox.shrink(), failure: (message) => Text(message)),
                // ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15)),
                      onPressed: () {
                        StringMap user = {
                          "email": "am@gmail.com",
                          "password": "123456"
                        };
                        ref.watch(authNotifierProvider.notifier).signIn(user);
                      },
                      child: ref.watch(authNotifierProvider).maybeWhen(
                          orElse: () => const Center(child: Text("Sign In")),
                          loading: () => Center(
                                child: ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxWidth: 25),
                                  child: const LoadingIndicator(
                                    indicatorType: Indicator.ballPulse,
                                    strokeWidth: 2,
                                    colors: [Colors.white],
                                    pathBackgroundColor: Colors.black,
                                  ),
                                ),
                              )),
                    ),
                  ],
                ),
              ],
            );
          }),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('New here?  '),
              GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(RegisterRoute());
                  },
                  child: const Text(
                    'Register here',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
