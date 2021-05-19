import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_project_temp/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_project_temp/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_ddd_project_temp/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold((failure) {
            FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => 'Cancelled By User',
                serverError: (_) => 'Server Error',
                emailAlreadyInUse: (_) => 'Email Already In Use',
                invalidEmailAndPasswordCombination: (_) =>
                    'Invalid Email And Password Combination',
              ),
            ).show(context);
          }, (_) {
            ExtendedNavigator.of(context).replace(Routes.noteOverviewPage);
            BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.authCheckRequested());
          }),
        );
      },
      builder: (context, state) => Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ListView(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  autocorrect: false,
                  onChanged: (value) =>
                      BlocProvider.of<SignInFormBloc>(context).add(
                    SignInFormEvent.emailChanged(value),
                  ),
                  validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null),
                        (_) => null,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.email),
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) =>
                      BlocProvider.of<SignInFormBloc>(context).add(
                    SignInFormEvent.passwordChanged(value),
                  ),
                  validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                      .state
                      .password
                      .value
                      .fold(
                        (f) => f.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => null),
                        (r) => null,
                      ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          BlocProvider.of<SignInFormBloc>(context).add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPress(),
                          );
                        },
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          BlocProvider.of<SignInFormBloc>(context).add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPress(),
                          );
                        },
                        child: const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    BlocProvider.of<SignInFormBloc>(context).add(
                      const SignInFormEvent.signInWithGooglePress(),
                    );
                  },
                  child: const Text(
                    'SIGN IN WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
    );
  }
}
