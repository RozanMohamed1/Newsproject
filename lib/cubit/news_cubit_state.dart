import 'package:iti/models/model.dart';

abstract class NewsCubitState {}
final class NewsCubitInitial extends NewsCubitState{}
final class NewsCubitLoading extends NewsCubitState{}
final class NewsCubitSuccess extends NewsCubitState{
  final List<model> newlist;
  NewsCubitSuccess(this.newlist);
}
final class NewsCubitFailure extends NewsCubitState{
  final String errorMessage;
  NewsCubitFailure(this.errorMessage);
}