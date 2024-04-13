import 'package:flutter/material.dart';
import 'package:my_app/screens/Home_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscureUser = true; // Keadaan awal teks sandi tersembunyi
  bool _isObscurePassword = true;

  // Fungsi untuk menampilkan atau menyembunyikan teks password
  void _toggleObscureText(bool isPassword) {
    setState(() {
      if (isPassword) {
        _isObscurePassword = !_isObscurePassword;
      } else {
        _isObscureUser = !_isObscureUser;
      }
    });
  }

  // Fungsi untuk melakukan login
  void _login() {
    // Lakukan validasi login di sini
    // Contoh sederhana: jika username dan password sesuai, arahkan ke FirstPage
    // Jika login berhasil, arahkan ke halaman FirstPage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => const Homescreen(
                title: 'Home',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Implement build method to build the UI for login screen
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          // Background with transparency
          color: const Color.fromARGB(255, 105, 202, 205),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MomCare',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Welcome Back, Please enter your account or create an account if it's the first time using MomCare application",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Divider(color: Colors.white),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: _isObscureUser,
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscureUser ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    _toggleObscureText(false);
                  },
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: _isObscurePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscurePassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    _toggleObscureText(true);
                  },
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed:
                      _login, // Panggil fungsi _login saat tombol ditekan
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black87,
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
