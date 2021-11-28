/// Função responsavel por recuperar a primeira letra do nome do usuário que
/// enviou a mesagem.
///
/// Serve para; se o usuário que enviou a mesagem não tiver uma foto definida
/// de perfil, então sua icial será usada como icone/foto de perfil (CircleAvatar).
String saveIndex({required String text}) {
  int index = 0;
  List<String> characters = [];
  for (var rune in text.runes) {
    var character = String.fromCharCode(rune);
    characters.add(character);
  }
  return characters[index].toUpperCase();
}
