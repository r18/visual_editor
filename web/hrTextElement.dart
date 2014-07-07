import 'hrAbstractNode.dart';
import 'dart:svg';

class hrTextElement extends hrAbstractNode {
  String textContent;
  TextElement _element;
  
  hrTextElement(String str,[num x=100,num y=100]){
      _element = new TextElement(); 
      _element.text = str;
      _element.setAttribute("x", x.toString());
      _element.setAttribute("y", y.toString());
  }
  get element =>_element;
}
