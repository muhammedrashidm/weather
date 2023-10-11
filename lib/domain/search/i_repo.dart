import 'package:dartz/dartz.dart' as dartz;
import 'package:whether/domain/search/modals.dart';
import 'package:whether/domain/whether/i_rpeo.dart';

abstract class ISearchRepo{
  Future<dartz.Either< Failure,List<SearchResultModal>>> search(String key);
}