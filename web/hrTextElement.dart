import 'hrAbstractNode.dart';
import 'dart:svg';

class hrTextElement extends hrAbstractNode {
  String textContent;
  TextElement _element;
  get text => textContent;
  get element => _element;
  

  hrTextElement(String str, [num x=100, num y=100]){
    state = hrNodeState.HR_PROCESSING;
    _element = new TextElement(); 
    area = new hrArea(x,y);
    textContent = str;
    update();
  }

  void setText(String str){
    textContent = str;
    update();
  }

  void addText(String str){
    _element.text += str;
  }

  void update(){
    _element.text = textContent;
    _element.setAttribute("x", area.x.toString());
    _element.setAttribute("y", area.y.toString());
  }

}
