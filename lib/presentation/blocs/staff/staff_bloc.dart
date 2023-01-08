import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_teman_kopi/domain/use_cases/fetch_staff_use_case.dart';
import 'package:stream_transform/stream_transform.dart';
import '../../../data/models/staff_model.dart';

part 'staff_event.dart';
part 'staff_state.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class StaffBloc extends Bloc<StaffEvent, StaffState> {
  StaffBloc({required this.fetchStaffUseCase}) : super(StaffInitialState()) {
    on<StaffFetchEvent>(_fetch, transformer: debounce(_duration));
  }

  final FetchStaffUseCase fetchStaffUseCase;

  void _fetch(StaffFetchEvent event, Emitter<StaffState> emit) async {
    emit(StaffLoadingState());
    try {
      final listStaff = await fetchStaffUseCase.call();
      emit(StaffFetchedState(listStaff: listStaff));
    } catch (e) {
      emit(StaffErrorState(message: e.toString()));
    }
  }
}
