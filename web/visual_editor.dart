import 'dart:html';
import 'dart:svg';
import 'hrTextElement.dart';

var input = querySelector('#input');
var svgCtx = querySelector('#output');
void main() {
  
  input.onKeyPress.listen((e)=> print(e));
  hrTextElement t = new hrTextElement("Hello",100,100);
  svgCtx.append(t.element);
}

