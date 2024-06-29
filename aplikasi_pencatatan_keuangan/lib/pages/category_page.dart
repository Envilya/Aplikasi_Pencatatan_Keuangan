import 'package:aplikasi_pencatatan_keuangan/model/database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isExpense = true;
  final AppDatabase database = AppDatabase();
  TextEditingController categoryNameController = TextEditingController();

  Future insert(String name, int type) async {
    DateTime now = DateTime.now();
    final row = await database.into(database.categories).insert(
        CategoriesCompanion.insert(
            name: name, type: type, createdAt: now, updatedAt: now));
    print(row);
  }

  void openDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  Text(
                    (isExpense) ? "Tambah Pengeluaran" : "Tambah Pemasukan",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: (isExpense) ? Colors.red : Colors.indigo),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: categoryNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Nama"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        insert(categoryNameController.text, isExpense ? 2 : 1);
                        Navigator.of(context, rootNavigator: true)
                            .pop('dialog');
                        setState(() {});
                      },
                      child: Text("Simpan"))
                ],
              )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                value: isExpense,
                onChanged: (bool value) {
                  setState(() {
                    isExpense = value;
                  });
                },
                inactiveTrackColor: Colors.indigo[200],
                inactiveThumbColor: Colors.indigo,
                activeColor: Colors.red,
              ),
              IconButton(
                  onPressed: () {
                    openDialog();
                  },
                  icon: Icon(Icons.add))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isExpense)
                  ? Icon(Icons.upload, color: Colors.red)
                  : Icon(Icons.download, color: Colors.indigo),
              title: Text("Sedekah"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  SizedBox(width: 10),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isExpense)
                  ? Icon(Icons.upload, color: Colors.red)
                  : Icon(Icons.download, color: Colors.indigo),
              title: Text("Sedekah"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  SizedBox(width: 10),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
