import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/pages/quotes/bloc/bloc/quote_bloc.dart';
import 'package:my_app/pages/quotes/widgets/quote_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>QuoteBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner : false,
        title: 'Quote App',
        home: QuotePage(),
      ),
    );
  }
}
