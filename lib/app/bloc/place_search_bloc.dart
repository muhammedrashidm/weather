import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whether/data/search/repo.dart';
import 'package:whether/domain/search/modals.dart';
import 'package:rxdart/rxdart.dart';

part 'place_search_event.dart';
part 'place_search_state.dart';
part 'place_search_bloc.freezed.dart';

class PlaceSearchBloc extends Bloc<PlaceSearchEvent, PlaceSearchState> {
  final SearchRepo repo;
  PlaceSearchBloc(this.repo)
      : super(const _Initial(isLoading: false, hasError: false, result: [])) {
    on<_PlaceSearchEventSearch>(
      (event, emit) async {
        if(event.key.isEmpty)return;
        emit(state.copyWith(isLoading: true));
        final res = await repo.search(event.key);
        res.fold((l) {
          emit(state.copyWith(result: [],
              isLoading: false, hasError: true, errorMessage: l.message));
        }, (r) {
          emit(state.copyWith(isLoading: false, result: r));
        });
      },
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(seconds: 2))
            .asyncExpand(mapper);
      },
    );
  }
}
