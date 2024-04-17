class Persegi{
  var p = 20;
  var l = 30;
  var t = 40;

  void Luas(){
    var m = p*l;
    print(m);
  }
}

class Balok extends Persegi{
  var p1 = 40;
  var l1 = 160;

  void Luas(){
    var m = p1*l1;
    print(m);
  }
}

void main(){
  var k = Balok();
  k.Luas();
}