abstract class hrAbstractNode{
  hrArea area;
  List<hrAbstractNode> nodes;

  void move(num x,num y);
  void update();
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

class hrNodeState {
  static final NODE_CHANGED = 0;
  static final NODE_COMPLETED = 1;
}
