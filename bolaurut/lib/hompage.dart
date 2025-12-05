import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final formKey = GlobalKey<FormState>();
  final tecData = TextEditingController();
  final tecSblmUrut = TextEditingController();
  final tecStlhUrut = TextEditingController();

  List<int> ListAngka = [];

  void bubbleSort(List<int> arr) {
    int n = arr.length;
    int temp = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 1; j < (n - i); j++) {
        if (arr[j - 1] > arr[j]) {
          temp = arr[j - 1];
          arr[j - 1] = arr[j];
          arr[j] = temp;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'Bola Urut',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF7ABEFA),
      ),

      body: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: tecData,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Data tidak boleh kosong';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Data ke-',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton(
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) {
                        int data = int.parse(tecData.text);
                        ListAngka.add(data);
                        debugPrint('List awal : $ListAngka');
                        tecData.text = '';
                      }
                    });
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF7ABEFA),
                  ),
                  child: Text('Urutkan'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      ListAngka.clear();
                      tecSblmUrut.clear();
                      tecStlhUrut.clear();
                      debugPrint('List awal : $ListAngka');
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF7ABEFA)),
                  ),
                  child: Text('Hapus'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Text('Data : ${ListAngka}'),
              ),
            ),

            const SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: tecSblmUrut,
                maxLines: 5,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Data sebelum diurutkan : ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: tecStlhUrut,
                maxLines: 5,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Data setelah diurutkan : ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    List<int> listUntukDiurutkan = List<int>.from(ListAngka);
                    tecSblmUrut.text = ListAngka.join(', ');
                    bubbleSort(listUntukDiurutkan);
                    tecStlhUrut.text = listUntukDiurutkan.join(', ');
                  });
                },
                child: Text('Urutkan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
