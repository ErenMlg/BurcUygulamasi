class Burc {
  final String _burcAdi;
  final String _burcDetay;
  final String _burcTarih;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => _burcAdi;
  get burcDetay => _burcDetay;
  get burcTarih => _burcTarih;
  get burcKucukResim => _burcKucukResim;
  get burcBuyukResim => _burcBuyukResim;

  Burc(this._burcAdi, this._burcDetay, this._burcTarih, this._burcBuyukResim,
      this._burcKucukResim);

  @override
  String toString() {
    return '$burcAdi - $_burcBuyukResim';
  }
}
