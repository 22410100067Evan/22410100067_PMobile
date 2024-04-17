abstract class Persegi{
  void Luas();
}

class Balok1 extends Persegi{
  var p = 20;
  var l = 40;
  void Luas(){
    var m = p*l;
    print(m);
  }
}

class Balok2 extends Persegi{
  var p = 60;
  var l = 80;
  void Luas(){
    var m = p*l;
    print(m);
  }
}

void main(){
  Balok1 k2 = Balok1();
  Balok2 k3 = Balok2();
  k2.Luas();
  k3.Luas();
}