import 'package:flutter/material.dart';
import 'package:flutter_21express/bloc/tracking/tracking_bloc.dart';
import 'package:flutter_21express/data/api/api_service.dart';
import 'package:flutter_21express/presentation/widgets/introduction_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrackingBloc(ApiService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade800),
          useMaterial3: true,
        ),
        home: const IntroductionWidget(),
      ),
    );
  }
}
