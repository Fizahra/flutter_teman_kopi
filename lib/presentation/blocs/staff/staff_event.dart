part of 'staff_bloc.dart';

abstract class StaffEvent extends Equatable {
  const StaffEvent();

  @override
  List<Object?> get props => [];
}

class StaffFetchEvent extends StaffEvent {
  const StaffFetchEvent();

  @override
  List<Object?> get props => [];
}

class StaffResfreshEvent extends StaffEvent {}
