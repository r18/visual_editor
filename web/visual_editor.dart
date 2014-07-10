import 'dart:html';
import 'dart:svg';
import 'hrTextElement.dart';

var input = querySelector('#input');
var svgCtx = querySelector('#output');
hrTextElement testText = new hrTextElement("",100,100);

void main() {
  input.onKeyUp.listen(inputHandler);
  svgCtx.append(testText.element);
}

void inputHandler (e){
  print(e.keyCode);
  if(eval(input.value))input.value = "";
}

bool eval (String input,int key){
  testText.addText(input);
  return true;
}
