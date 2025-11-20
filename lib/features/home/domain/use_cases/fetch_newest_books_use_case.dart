import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/use_cases/no_params_use_case.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends NoParamsUseCase<List<BookModel>> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookModel>>> call() async {
    return await homeRepo.fetchNewestBooks();
  }
}
