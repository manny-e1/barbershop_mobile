import 'package:auto_route/auto_route.dart';
import 'package:barbershop_frontend/app_router.gr.dart';
import 'package:barbershop_frontend/user/auth/application/auth_notifier.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:barbershop_frontend/user/auth/presentation/widgets/rounded_text_field.dart';
import 'package:barbershop_frontend/user/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(builder: (context, ref, _) {
            final validator = ref.watch(authValidationProvider);
            ref.listen<AuthState>(authNotifierProvider, (prev, current) {
              current.whenOrNull(failure: (failure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(failure)));
              });
            });
            return Column(
              children: [
                RoundedTextField.name(
                    controller: nameController,
                    onChange: validator.validateName,
                    labelText: 'Name;',
                    errorText: validator.name.error),
                RoundedTextField.email(
                    controller: emailController,
                    onChange: validator.validateEmail,
                    labelText: 'email;',
                    errorText: validator.email.error),
                RoundedTextField.password(
                  controller: passwordController,
                  labelText: 'password',
                  onChange: validator.validatePassword,
                  errorText: validator.password.error,
                ),
                RoundedTextField.phoneNumber(
                    controller: phoneNumberController,
                    onChange: validator.validatePhoneNumber,
                    labelText: 'phoneNumber;',
                    errorText: validator.phoneNumber.error),
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
                      onPressed: validator.isValid()
                          ? () {
                              StringMap user = {
                                "name": validator.name.value!,
                                "email": validator.email.value!,
                                "password": validator.password.value!,
                                "phoneNumber": validator.phoneNumber.value!,
                                "role": "CLIENT"
                              };
                              ref
                                  .watch(authNotifierProvider.notifier)
                                  .signUp(user);
                            }
                          : null,
                      child: ref.watch(authNotifierProvider).maybeWhen(
                          orElse: () => const Center(child: Text("Register")),
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
              const Text('Already have an account?  '),
              GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(SignInRoute());
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
