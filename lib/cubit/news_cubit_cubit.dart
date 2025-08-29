import 'package:bloc/bloc.dart';
import 'package:iti/cubit/news_cubit_state.dart';
import 'package:iti/models/model.dart';
import 'package:iti/services/newsServices.dart';

class NewsCubit extends Cubit<NewsCubitState> {
  final NewsService newsService;

  NewsCubit(this.newsService) : super(NewsCubitInitial());

  Future<void> getNewsByCategory(String category) async {
    try {
      emit(NewsCubitLoading());

      final List<model> newsList = await newsService.getNewsByCategory(category);

      emit(NewsCubitSuccess(newsList));
    } catch (e) {
      emit(NewsCubitFailure(e.toString()));
    }
  }
}