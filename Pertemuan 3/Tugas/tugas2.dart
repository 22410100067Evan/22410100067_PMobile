class Persegi{
  int p = 20;
  int l = 30;

  void Luas(int p1, int l1){
    this.p = p1;
    this.l = l1;
    var L = p*l;
    print(L);
  }

  int Luasreturn(int p1, int l1){
    this.p = p1;
    this.l = l1;

    return this.p * this.l;
  }
}

void main(){
  var k = Persegi();
  k.Luas(2,3);
  print(k.p);
  print(k.l);
  print(k.Luasreturn(4,10));
}