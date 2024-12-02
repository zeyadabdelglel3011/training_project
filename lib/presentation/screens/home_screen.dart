import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/presentation/screens/detail_screen.dart';
import 'package:training_project/presentation/screens/fav_screen.dart';

import '../../cubits/movie_cubit/movie_cubit.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<MovieCubit>(context).getMovieData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> FavScreen()),
                );
              },
              icon: Icon(
                Icons.favorite,
              ),
          ),
        ],
        centerTitle: true,
        title : Text(
          'Popular People',
        ),
      ),
      body: BlocBuilder<MovieCubit , MovieState>
        (
          builder: (context , state)
          {
           return state is MovieLoading?
           Center(child:  CircularProgressIndicator(),):
           ListView.separated(
             separatorBuilder: (context , index){
               return Divider(
                 height: 1,
                 color: Colors.grey,
               );
             },
             itemCount: 15,
               itemBuilder: (context , index){
                 return  Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                   child: GestureDetector(
                     onTap: (){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> DetailScreen(id: BlocProvider.of<MovieCubit>(context).movieModel.results![index].id!  ),),
                       );
                     },
                     child: Container(
                       child: Center(
                         child: Column(
                         children: [
                           Text(
                             BlocProvider.of<MovieCubit>(context).movieModel.results![index].name ?? '' ,
                           ),
                           Text(
                             BlocProvider.of<MovieCubit>(context).movieModel.results![index].knownForDepartment ?? '' ,
                           ),
                         ],
                       ),
                       ),
                       width: 300,
                       height: 120,
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(8),

                       ),
                     ),
                   ),
                 );
               }

           );
          }
      ),
    );
  }
}
