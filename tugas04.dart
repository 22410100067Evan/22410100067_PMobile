void main(){
  int volume(var p, var l, var t){
    var vol;
    vol = p*l*t;
    return vol;
  }
  int LuasPermukaan(var p, var l, var t){
    var LuPer;
    LuPer = 2*((p*l)+(p*t)+(l*t));
    return LuPer;
  }
  int Keliling(var p, var l, var t){
    var kel;
    kel = 4*(p+t+l);
    return kel;
  }

  print ("volume balok adalah = ${volume(2,3,4)}");
  print ("Luas permukaan balok adalah = ${volume(2,3,4)}");
  print ("Keliling Rusuk balok adalah = ${volume(2,3,4)}");
}