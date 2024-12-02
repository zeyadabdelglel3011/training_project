import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/cubits/details_cubit/details_cubit.dart';
import 'package:training_project/cubits/movie_cubit/movie_cubit.dart';

class ImageScreen extends StatefulWidget {
  ImageScreen({super.key, required this.id});
  final num id;

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DetailsCubit>(context).getDetailsData(id: widget.id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Details Screen'),
      ),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state is DetailsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DetailsLoading) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.builder(
                  itemCount:10,
                    itemBuilder: (context , index){

                })
              ),
              );

          }
          else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
