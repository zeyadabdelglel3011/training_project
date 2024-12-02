import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/cubits/details_cubit/details_cubit.dart';
import 'package:training_project/presentation/screens/splash_screen.dart';

import 'cubits/image_cubit/image_cubit.dart';
import 'cubits/movie_cubit/movie_cubit.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<MovieCubit>(
      create: (context) => MovieCubit(),

    ),
    BlocProvider<DetailsCubit>
      (create: (context)=> DetailsCubit()),

    BlocProvider<ImageCubit>
      (create: (context)=> ImageCubit()),


  ], child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
