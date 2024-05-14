import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_product/presenter/check_auth/bloc/check_auth_bloc.dart';

class CheckAuthPage extends StatelessWidget {
  const CheckAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CheckAuthBloc>().add(const CheckAuthEvent.checkID());
    return Scaffold(
        body: BlocListener<CheckAuthBloc, CheckAuthState>(
            listener: (context, state) {
              if (state is Authenticated) {
                Navigator.popAndPushNamed(context, '/list');
              }
              else{
                Navigator.popAndPushNamed(context, '/login');
              }
            },
            child: const Center(
              child: CircularProgressIndicator(),
            ),
        )
    );
  }
}