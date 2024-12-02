part of 'movie_cubit.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}
final class MovieLoading extends MovieState {}
final class MovieSuccess extends MovieState {}
final class MovieFailed extends MovieState {}
