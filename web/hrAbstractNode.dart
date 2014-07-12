abstract class hrAbstractNode{
  hrArea area;
  List<hrAbstractNode> nodes;
  hrNodeState state; 

  void move(num x,num y);
  void update();
  void freeze();
  void defrost();
}

class hrArea{
  int _x, _y, _w, _h; 

  hrArea([int x=0,int y=0,int w=0,int h=0]):
    _x = x,
    _y = y,
    _w = w,
    _h = h {
    }
  get x=>_x;
  get y=>_y;
}

abstract class Enum<T>{
  final T value;
  const Enum(this.value);
}

class hrNodeState<int> extends Enum<int> {
  const hrNodeState(int val):super(val);

  static final hrNodeState HR_PROCESSING = const hrNodeState(0);
  static final hrNodeState HR_READY = const hrNodeState(1);
  static final hrNodeState HR_FROZEN= const hrNodeState(2);
  static final hrNodeState HR_REQUIRE_UPDATE = const hrNodeState(3);
}

