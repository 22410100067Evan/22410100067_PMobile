class Karyawan{
  var _nama;
  var _jabatan;
  var _gaji;

  Karyawan(this._nama, this._jabatan, this._gaji);

  get gaji => _gaji;

  set gaji(value) {
    _gaji = value;
  }

  get jabatan => _jabatan;

  set jabatan(value) {
    _jabatan = value;
  }

  get nama => _nama;

  set nama(value) {
    _nama = value;
  }

  void Detailkaryawan(){
    print("=======================");
    print("Nama    :" + nama);
    print("Jabatan :" + jabatan);
    print("Gaji    :" + gaji);
    print("=======================");
  }
}

void main(){
  Karyawan x = Karyawan("Rommy", "Data Analyst", "40000");
  x.Detailkaryawan();
  x.gaji = "50000";
  x.jabatan = "Developer";
  x.Detailkaryawan();
}