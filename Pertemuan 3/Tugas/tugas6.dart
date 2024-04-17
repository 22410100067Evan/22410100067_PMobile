class Persegi{
  var p = 20;
  var l = 30;
}

class Balok extends Persegi{
  var t = 40;

  void volume(){
    var v = super.p * super.l * this.t;
    print(v);
  }
}

void main(){
  var k = Balok();
  k.volume();
}