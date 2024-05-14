import 'package:flutter/material.dart';
import 'package:list_product/presenter/login/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/ui/ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
      if (state.isAuthSuccess) {
        Navigator.popAndPushNamed(context, '/list');
      }
    }, builder: (context, state) {
      if (state.isLoadingLogin) {
        return const SizedBox(
          width: 100,
          height: 100,
          child: Center(child: CircularProgressIndicator()),
        );
      } else {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 1],
                colors: [Colors.greenAccent, Colors.white],
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Center(
                            child: TextWidget(
                              text: "Список покупок",
                              color: Colors.black,
                              fontSize: 44,
                            ),
                          ),
                        ),
                        Image.asset("assets/images/Logo.png"),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40,
                                right: 40,
                                bottom: 10,
                                top: 10,
                              ),
                              child: EnterName(
                                hintText: "Имя",
                                labelText: "Введите имя",
                                errorText: state.errorName != null ? state.errorName : null,
                                onChanged: (value) {
                                  context.read<LoginBloc>().add(LoginEvent.getUserName(name: value));
                                },
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 250,
                              child: CreateUserButton(
                                text: 'Создать аккаунт',
                                onPressed: () {
                                  context.read<LoginBloc>().add(LoginEvent.createUser(name: state.name));
                                  Navigator.popAndPushNamed(context, '/checkAuth');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40,
                                right: 40,
                                bottom: 10,
                                top: 10,
                              ),
                              child: EnterCod(
                                hintText: "Bog#12",
                                errorText: state.errorToken != null ? state.errorToken : null,
                                labelText: "Введите код авторизации",
                                onChanged: (value) {
                                  context.read<LoginBloc>().add(LoginEvent.getToken(token: value));
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: SizedBox(
                                height: 40,
                                width: 250,
                                child: JoinButton(
                                  text: "Присоединиться",
                                  onPressed: () {
                                    context.read<LoginBloc>().add(
                                      LoginEvent.joinToUser(token: state.token),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      // }
    });
  }
}
