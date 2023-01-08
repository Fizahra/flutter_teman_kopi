import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teman_kopi/presentation/blocs/staff/staff_bloc.dart';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<StaffBloc, StaffState>(builder: (context, state) {
      if (state is StaffFetchedState) {
        return ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Text(state.listStaff[index].nama),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: state.listStaff.length);
      }
      return Center(
        child: Text('State : $state'),
      );
    }));
  }
}
