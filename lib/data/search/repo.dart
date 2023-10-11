import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:whether/data/core/dio.dart';
import 'package:whether/data/core/mapper.dart';
import 'package:whether/data/search/search_response/search_response.dart';
import 'package:whether/domain/search/i_repo.dart';
import 'package:whether/domain/search/modals.dart';
import 'package:whether/domain/whether/i_rpeo.dart';

class SearchRepo extends ISearchRepo {
  final DioManager dio;

  SearchRepo({required this.dio});
  @override
  Future<Either<Failure, List<SearchResultModal>>> search(String key) async {
    try {
      final resp = await dio
          .get('/geo/1.0/direct', queryParameters: {"limit": 5, "q": key});
      if (resp.statusCode == 200) {
        final result = resp.data as List<dynamic>;
        final data = result.map((e) => SearchResponse.fromJson(e));
        return Right(data.map((e) => e.toDomain()).toList());
      } else {
        return Left(Failure(
            message: resp.statusMessage ?? '', code: resp.statusCode ?? 0));
      }
    } on DioException catch (e) {
      return Left(
          Failure(message: e.message ?? '', code: e.response?.statusCode ?? 0));
    } catch (e) {
      return Left(Failure(message: e.toString() ?? '', code: 0));
    }
  }
}
