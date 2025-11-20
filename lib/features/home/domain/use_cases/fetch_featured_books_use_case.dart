import 'package:bookly_app/core/use_cases/no_params_use_case.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/book_model/book_model.dart';

class FetchFeaturedBooksUseCase extends NoParamsUseCase<List<BookModel>> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookModel>>> call() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
