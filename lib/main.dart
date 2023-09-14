import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person),
          title: Text("Tugas Praktikum PAM 1"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Center(
            child: Column(
              children: [
                FlutterLogo(size: 50.0),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'Email',
                  ),
                  style: TextStyle(fontSize: 18.0), // Ukuran teks input
                  textInputAction:
                      TextInputAction.next, // Aksi tombol berikutnya
                ),
                SizedBox(height: 8.0),
                TextField(
                  maxLength: 8,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    hintText: 'Password',
                  ),
                  style: TextStyle(
                    fontSize: 18.0,
                  ), // Ukuran teks input
                  obscureText: true, // Untuk menyembunyikan teks (Password)
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // Tindakan yang diambil saat tombol ditekan
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16.0, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                      color: Colors.white, // Warna teks
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepPurple), // Warna latar belakang tombol
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(300.0, 45.0), // Ukuran tombol
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Bentuk melengkung
                      ),
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("Forgot Password ?")),
                SizedBox(height: 45),
                Image.asset(
                  "2.png",
                  width: 100.0,
                  height: 100.0,
                ),
                Text(
                  "Intan Kusuma Putri",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 1.0,
                        color: Colors.deepPurple
                      )
                    ]
                  ), // Ukuran teks nama
                ),
                Text(
                  "124210064",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.deepPurple,
                  ), // Ukuran teks nama
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
