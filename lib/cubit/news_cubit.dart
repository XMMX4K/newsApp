import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/api/getApi.dart';
import 'package:newsapp/cubit/news_state.dart';
import 'package:newsapp/models/newsModel.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.news) : super(InatailNews());

  Future<List<newsModel>>? NEWSMODELCUBIT;
  final NewsService news;
  GETNEWS() async {
    emit(newsLoading());
    try {
      NEWSMODELCUBIT = await news.getNews as Future<List<newsModel>>;
      emit(newsSucsses());
    } catch (e) {
      emit(newsfail());
    }
  }
}
