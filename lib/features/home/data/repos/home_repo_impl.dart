import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {

  final ApiService _apiService;
  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
  try {
  var data = await _apiService.get(endpoints: '?Filtering=free-ebooks&q=subject:programming&sorting=newest');
  List<BookModel> books = [];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
} catch (e) {
  return left(ServerFailure());
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
  
  
  
}