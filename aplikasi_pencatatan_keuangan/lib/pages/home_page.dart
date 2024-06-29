import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.download, color: Colors.indigo),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pemasukan",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Rp 4.000.000",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.upload, color: Colors.red),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pengeluaran",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Rp 4.000.000",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 14),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Transaksi",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold)),
          ),

          // Start: List Transaksi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(width: 10),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("Rp 20.000"),
                subtitle: Text("Makan Siang"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.red),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(width: 10),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("Rp 5.000.000"),
                subtitle: Text("Gaji Bulanan"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.green),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
