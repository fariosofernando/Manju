/// Pelo problema do OverScroll não ter que aconter então, este delimitador
/// de string entra em acção. Ele pega o conteúdo passado como parámetro e
/// delimita ele até um comprimento de 73 (len/lenght).

String slicingContent({required String content, int? limited}) {
  (limited == null) ? limited = 52 : limited = limited;
  List<String> delimitadora = [];
  String newMinContent = '';
  for (var rune in content.runes) {
    var character = String.fromCharCode(rune);
    delimitadora.add(character);
    int limit = (delimitadora.length);
    if (limit == limited) {
      for (var delString in delimitadora) {
        newMinContent += delString;
      }
    }
  }
  return (newMinContent += '...');
}
