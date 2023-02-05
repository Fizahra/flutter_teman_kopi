import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/presentation/pages/resultsregis_page.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DateTime _selectDate = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');
  TimeOfDay _selectTime = TimeOfDay.now();

  final TextEditingController _date = TextEditingController();
  final TextEditingController _time = TextEditingController();
  final TextEditingController _nama = TextEditingController();
  final TextEditingController _email = TextEditingController();

  void _showDatePicker(context) async {
    final datePick = await showDatePicker(
      context: context,
      initialDate: DateTime(2015),
      firstDate: DateTime(1980),
      lastDate: DateTime(2015),
    );

    if (datePick != null) {
      setState(() {
        _selectDate = datePick;
      });
    }
  }

  void _showTimePicker(context) async {
    final timePick = await showTimePicker(
        context: context,
        initialTime: _selectTime,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });

    if (timePick != null) {
      setState(() {
        _selectTime = timePick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  // ignore: prefer_const_constructors
                  const Text('Selamat Datang di Teman Kopi!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(255, 153, 109, 93),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Temani secangkir kopimu dengan kucing yang menggemaskan',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 153, 109, 93),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(
                            color: const Color.fromARGB(255, 153, 109, 93)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _nama,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nama Lengkap',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 153, 109, 93)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(
                            color: const Color.fromARGB(255, 153, 109, 93)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 153, 109, 93)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(
                            color: const Color.fromARGB(255, 153, 109, 93)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _date,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                          decoration: const InputDecoration(
                              icon: Icon(Icons.calendar_today_rounded),
                              labelText: 'Tanggal Lahir',
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 153, 109, 93))),
                          onTap: () {
                            _showDatePicker(context);
                            setState(() {
                              _date.text = _dateFormat.format(_selectDate);
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(
                            color: const Color.fromARGB(255, 153, 109, 93)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _time,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                          decoration: const InputDecoration(
                              icon: Icon(Icons.timer),
                              labelText: 'Waktu biasa nongkrong',
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 153, 109, 93))),
                          onTap: () {
                            _showTimePicker(context);
                            setState(() {
                              _time.text = _selectTime.format(context);
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultRegistPage(
                                  nama: _nama.text,
                                  email: _email.text,
                                  tanggal: _date.text,
                                  waktu: _time.text)));
                    },
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 153, 109, 93)),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(35, 15, 35, 15),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.orange))),
                    ),
                    child: const Text(
                      "Daftar Sekarang",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Sudah memiliki akun? Login aja yuk!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 153, 109, 93),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ));
  }
}
