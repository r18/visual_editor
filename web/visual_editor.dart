import 'dart:html';
import 'dart:svg';

void main() {
  querySelector("#sample_text_id")
      ..text = "Click me!"
      ..onClick.listen(reverseText);
  SvgElement svg;
  document.body.append(svg);
}

void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector("#sample_text_id").text = buffer.toString();
}
