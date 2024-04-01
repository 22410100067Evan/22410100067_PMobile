import 'dart:io';

void main() {
  int n = 2;
  int m = 3;
  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      stdout.write('*');
    }
    print(''); // Menambahkan baris kosong setelah setiap baris bintang
  }
}