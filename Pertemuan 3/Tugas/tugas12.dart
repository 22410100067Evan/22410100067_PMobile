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
  Karyawan x = Karyawan("Chris", "Web Developer", "75000");
  x.Detailkaryawan();
  x.gaji = "60000";
  x.jabatan = "Team Manager";
  x.Detailkaryawan();
}
