import 'hrAbstractNode.dart';
import 'dart:svg';

class hrTextElement extends hrAbstractNode {
  String textContent;
  TextElement _element;
  get element =>_element;

  hrTextElement(String str,[num x=100,num y=100]){
    _element = new TextElement(); 
    _element.text = str;
    area = new hrArea(x,y);
    update();
  }

  void setText(String str){
    _element.text = str;
  }

  void addText(String str){
    _element.text += str;
  }

  void update(){
    _element.setAttribute("x", area.x.toString());
    _element.setAttribute("y", area.y.toString());
  }

}
