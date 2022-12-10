void main(){

  TV tv1 = new TV(47, "LG"); // new does not necessary!
   
  print(tv1.getVolume());
  tv1.volumeUp();
  tv1.volumeUp();
  tv1.volumeUp();
  tv1.volumeUp();
  print(tv1.getVolume());
  print(tv1._modelName);

}

class TV{
  
  int _screenSize=1; // private decleration starts with _ not syntacly only library dev to dev
  int _volume = 50;
  String _modelName="";
  int c=8;
  String name ="";
  
  TV(int screenSize, String modelName){
    this._screenSize = screenSize;
    this._modelName = modelName;
  }

  void volumeUp(){
    if(_volume <= 96)
      _volume+=4;
  }
  
  int getVolume(){return this._volume;}
}