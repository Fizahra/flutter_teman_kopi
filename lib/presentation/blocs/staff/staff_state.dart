part of 'staff_bloc.dart';

abstract class StaffState extends Equatable {
  const StaffState();

  @override
  List<Object?> get props => [];
}

class StaffInitialState extends StaffState {}

class StaffLoadingState extends StaffState {}

class StaffLoadedState extends StaffState {
  const StaffLoadedState({required this.staff});

  final StaffModel staff;

  @override
  List<Object?> get props => [staff];
}

class StaffFetchedState extends StaffState {
  const StaffFetchedState({required this.listStaff});

  final List<StaffModel> listStaff;

  @override
  List<Object?> get props => [listStaff];
}

class StaffErrorState extends StaffState {
  const StaffErrorState({required this.message});

  final String message;

  @override
  List<Object?> get props => [];
}
