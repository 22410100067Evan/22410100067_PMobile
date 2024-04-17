class Persegi{
  var p = 20;
  var l = 40;
  void Luas(){
    var m = p*l;
    print(m);
  }
}

class Balok{
  var p1 = 40;
  var l1 = 80;
  var t1 = 100;

  void Volume(){
    var v = p1 * l1 * t1;
    print(v);
  }
}

class Ruang implements Persegi,Balok{
  @override
  late int l;

  @override
  late int l1;

  @override
  late int p;

  @override
  late int p1;

  @override
  late int t1;

  @override
  void Luas(){
    var m = p*l;
    print(m);
  }

  @override
  void Volume(){
    var v = p1 * l1 * t1;
    print(v);
  }
}

void main(){
  Ruang k = Ruang();
  k.p = 2;
  k.l = 3;
  k.p1 = 20;
  k.l1 = 30;
  k.t1 = 40;
  k.Luas();
  k.Volume();
}