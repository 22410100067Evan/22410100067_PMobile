class dimensidua
{
  int x = 10;
  int y = 20;
  int _coba = 50;

  int get coba => _coba;
  set coba(int value)
  {
    _coba = value;
  }

  void luas(int x1, int y1)
  {
    int l;
    l = x1*y1;
    print(l);
  }
  void keliling(int x, int y)
  {
    int kl;
    kl = this.x*this.y;
    print(kl);
    kl = x*y;
    print(kl);
  }
}