import 'package:flutter/material.dart';
import 'package:list_product/presenter/check_auth/bloc/check_auth_bloc.dart';
import 'package:list_product/presenter/check_auth/pages/check_auth.dart';
import 'package:list_product/presenter/list/bloc/list_bloc.dart';
import 'package:list_product/presenter/list/pages/list.dart';
import 'package:list_product/presenter/login/pages/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_product/presenter/login/bloc/login_bloc.dart';
import 'package:list_product/presenter/order/bloc/order_bloc.dart';
import 'package:list_product/presenter/order/pages/order.dart';
import 'package:list_product/presenter/order/pages/order_story.dart';
import 'package:list_product/presenter/story/bloc/story_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';


import 'presenter/story/pages/story.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://zcszktbqshrctzilufgc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inpjc3prdGJxc2hyY3R6aWx1ZmdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc5MDcxOTIsImV4cCI6MjAyMzQ4MzE5Mn0.DEQ2IjKQIwTsYFnZGavXFvjjzBDZXnZUOoIdHmHyCY4',
  );
  initializeDateFormatting('ru', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<ListBloc>(
            create: (context) => ListBloc(),
        ),
        BlocProvider<CheckAuthBloc>(
          create: (context) => CheckAuthBloc(),
        ),
        BlocProvider<OrderBloc>(
          create: (context) => OrderBloc(),
        ),
        BlocProvider<StoryBloc>(
            create: (context) => StoryBloc()
        ),
      ],
      child: MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        routes: {
          '/checkAuth': (context) => const CheckAuthPage(),
          '/login': (context) => const LoginPage(),
          '/list': (context) => const ListPage(),
          '/story': (context) => const StoryPage(),
          '/order': (context) => const OrderPage(),
          '/order_story': (context) => const OrderStoryPage(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ListPage(),
      ),
    );
  }
}