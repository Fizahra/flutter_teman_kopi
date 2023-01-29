import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_teman_kopi/presentation/blocs/staff/staff_bloc.dart';
import 'package:flutter_teman_kopi/presentation/pages/add_staff_page.dart';

class StaffPage extends StatefulWidget {
  const StaffPage({super.key});

  @override
  State<StaffPage> createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> {
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Data Staff Teman Kopi',
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 109, 93),
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Tarik ke atas untuk melakukan refresh'),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: RefreshIndicator(
                onRefresh: () async {
                  final staffBloc = BlocProvider.of<StaffBloc>(context);
                  staffBloc.add(const StaffFetchEvent());
                },
                child: BlocBuilder<StaffBloc, StaffState>(
                  builder: (context, state) {
                    if (state is StaffFetchedState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.listStaff.length,
                        itemBuilder: (context, index) {
                          final id = state.listStaff[index].id;
                          return ListTile(
                            leading: CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 153, 109, 93),
                                child: Text('${index + 1}')),
                            title: Text(state.listStaff[index].nama),
                            subtitle: Text(state.listStaff[index].posisi),
                            trailing: PopupMenuButton(onSelected: (value) {
                              if (value == 'edit') {
                                //open edit page
                              } else if (value == 'delete') {
                                deleteById(id);
                              }
                            }, itemBuilder: (context) {
                              return [
                                const PopupMenuItem(
                                  value: 'edit',
                                  child: Text('Ubah'),
                                ),
                                const PopupMenuItem(
                                  value: 'delete',
                                  child: Text('Hapus'),
                                )
                              ];
                            }),
                          );
                        },
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 153, 109, 93),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddStaffPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> deleteById(id) async {
    final url = 'http://10.0.2.2:8080/staff/$id';
    final uri = Uri.parse(url);
    final filtered = data.where((element) => element['id'] != id).toList();
    setState(() {
      data = filtered;
    });

    final response = await http.delete(uri);

    if (response.statusCode == 200) {
    } else {
      showErrorMessage('Ups! Gagal menghapus data!');
    }
  }

  void showErrorMessage(String message) {
    final snackBar = SnackBar(
        content: Text(
      message,
      style: const TextStyle(color: Colors.white),
    ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
