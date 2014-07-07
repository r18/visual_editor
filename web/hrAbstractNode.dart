abstract class hrAbstractNode{
  hrArea _area;
  List<hrAbstractNode> nodes;

  void move(num x,num y);
  void update();
  hrArea getArea();
}

class hrArea{
  int _x, _y, _w, _h; 
  hrArea(x,y,w,h):
    _x = x,
    _y = y,
    _w = w,
    _h = h {

  }
  get x=>_x;
}

class hrNodeState {
  static final NODE_CHANGED = 0;
  static final NODE_COMPLETED = 1;
}
