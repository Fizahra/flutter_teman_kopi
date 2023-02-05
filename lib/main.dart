import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teman_kopi/presentation/blocs/staff/staff_bloc.dart';
import 'package:flutter_teman_kopi/presentation/pages/add_staff_page.dart';
import 'package:flutter_teman_kopi/presentation/pages/edit_staff_page.dart';
import 'package:flutter_teman_kopi/presentation/pages/main_page.dart';
import 'package:flutter_teman_kopi/presentation/pages/staff_page.dart';
import 'injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // ignore: prefer_const_constructors
          create: (context) => di.sl<StaffBloc>()..add(StaffFetchEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
        routes: {
          '/add': (context) => const AddStaffPage(),
          '/edit': (context) => const EditStaffPage(),
          '/staff': (context) => const StaffPage(),
        },
      ),
    );
  }
}
