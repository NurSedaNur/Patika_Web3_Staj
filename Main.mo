//hesap makinesi
//degiskenler(let=>immutable(degistirilemez), var=>mutable(degistirilebilir))
//operatorler
//async metodu
//if condition

//canister => akıllı sozlesme

actor hesap_makinesi {
 var hucre: Int=0;

 //toplama islemi
 public func toplama(s:Int):async Int{
  hucre+=s;
  hucre
  // Debug.print(debug_show (hucre));
 };

//cikarma islemi
 public func cikarma(s:Int):async Int{
  hucre-=s;
  hucre
  // Debug.print(debug_show (hucre));
 };

//capma islemi
 public func carpma(s:Int):async Int{
  hucre*=s;
  hucre
  // Debug.print(debug_show (hucre));
 };

 //bolme islemi
 public func bolme(s:Int):async ?Int{
  if(s==0){
    null
  }
  else{
    hucre/=s;
    ?hucre
  }
 };

  //temizle
  public func temizle():async (){
    hucre:=0;
  }
};

