import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int? _gayValue ;
  int? _berbohongValue ;
  int? _anggrek ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Penduduk'),
        backgroundColor: const Color(0xffffaac4),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Pertanyaan 1 \n',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text(
                    'jawablah pertanyaan di bawah ini dengan pilih 1 ya dan 1 tidak',
                  ),

                  Row(
                    children: [
                      const Text('apakah anda gay?'),
                      Radio<int>(
                        value: 1,
                        groupValue: _gayValue,
                        onChanged: (value) {
                          setState(() {
                            _gayValue = value as int;
                          });
                        },
                      ),
                      const Text('nggak'),
                      Radio<int>(
                        value: 2,
                        groupValue: _gayValue,
                        onChanged: (value) {
                          setState(() {
                            _gayValue = value as int;
                          });
                        },
                      ),
                      const Text('iyah'),
                    ],
                  ),

                  Row(
                    children: [
                      const Text('apakah anda berbohong?'),
                      Radio<int>(
                        value: 1,
                        groupValue: _berbohongValue,
                        onChanged: (value) {
                          setState(() {
                            _berbohongValue = value as int;
                          });
                        },
                      ),
                      const Text('iya'),
                      Radio(
                        value: 2,
                        groupValue: _berbohongValue,
                        onChanged: (value) {
                          setState(() {
                            _berbohongValue = value as int;
                          });
                        },
                      ),
                      const Text('nggak'),
                    ],
                  ),
                ],
              ),
            ),

            // kode container 2
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child:  Text(
                      'Pertanyaan 2\n',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Text(
                    'apakah anda pernah melihat anggrek mekar pontianak?',
                  ),
                  Center(
                    child: Image(image: const AssetImage('images/jomok.png', ),
                    height: 200,
                      width: 300,


                    ),
                  ),



                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min, // Penting! Agar Row tidak serakah mengambil ruang
                        children: [
                          Radio<int>(
                            value: 1,
                            groupValue: _anggrek,
                            onChanged: (value) {
                              setState(() {
                                _anggrek = value;
                              });
                            },
                          ),
                          const Text('Pernah'),

                          Radio<int>(
                            value: 2,
                            groupValue: _anggrek,
                            onChanged: (value) {
                              setState(() {
                                _anggrek = value;
                              });
                            },
                          ),
                          const Text('Tidak'),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
