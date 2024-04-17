import 'latihan/dimensitiga.dart';
import 'latihan/dimensidua.dart';
import 'luasandimensidua.dart';

void main()
{
  var k = luasandimensidua();
  print(k.x);
  print(k.y);

  k.coba=333;
  print(k.coba);
  print(k.luaspermukaan());
  k.luas(20,50); print('--------------');
  k.keliling(1, 2);

  var kk = dimensitiga(1,2,3);
  print(kk.x);
  print(kk.y);
  print(kk.z);
  kk.volume(2,3,4);
}