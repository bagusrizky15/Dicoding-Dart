void main(){
  var ariel = Musicians();
  ariel.showTime();
}

abstract class Performer{
  void perform();
}

mixin Dancer implements Performer {
  void perform(){
    print("Dancing");
  }
}

mixin Singer implements Performer {
  void perform(){
    print("Singing");
  }
}

class Musicians extends Performer with Dancer, Singer {
  void showTime(){
    perform();
  }
}