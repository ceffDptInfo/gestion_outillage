import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) {
            Flushbar(
              title: "FlushBar",
              message: failure.map(
                  serverError: (_) => "server_error_message",
                  invalidEmailAndPasswordCombination: (_) =>
                      "sign_in_error_message"),
              duration: const Duration(seconds: 3),
            ).show(context);
          },
          (_) {
            context.router.replace(const SplashRoute());
            BlocProvider.of<AuthBloc>(context, listen: false)
                .add(const AuthEvent.authCheckRequested());
          },
        ),
      );
    }, builder: (context, state) {
      return SafeArea(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: CarouselSlider(
                  options: CarouselOptions(autoPlay: true, viewportFraction: 1),
                  items: [
                    Image.asset(
                      'assets/images/image_background/industrie-fond-0.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image_background/industrie-fond-1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image_background/industrie-fond-2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image_background/industrie-fond-3.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image_background/industrie-fond-4.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image_background/industrie-fond-5.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image_background/industrie-fond-6.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 64),
                          width: 200,
                          height: 150,
                          child: Image.asset('assets/images/ceff.png'),
                        ),
                        Text(
                          "Login",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 128, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email),
                              labelText: "Veuillez ajouter votre email",
                            ),
                            autocorrect: false,
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.emailChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .emailAddress
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                          invalidEmail: (_) => "Email invalide",
                                          orElse: () => null,
                                        ),
                                    (_) => null),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 128, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Veuillez ajouter votre mot de passe",
                            ),
                            autocorrect: false,
                            obscureText: true,
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    invalidPassword: (_) =>
                                        "Mot de passe invalide",
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 128, vertical: 8),
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        context.read<SignInFormBloc>().add(
                                              const SignInFormEvent
                                                  .signInWithEmailAndPasswordPressed(),
                                            );
                                      },
                                      child: const Text(
                                        "Se connecter",
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            textStyle:
                                                const TextStyle(fontSize: 20)),
                                        onPressed: () {
                                          context.read<AuthBloc>().add(
                                              const AuthEvent.signAsVisitor());
                                          context.router
                                              .replace(const HomeRoute());
                                        },
                                        child: const Text(
                                            'Se connecter en tant que visiteur'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (state.isSubmitting) ...[
                          const SizedBox(
                            height: 8,
                          ),
                          const LinearProgressIndicator(),
                        ]
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
