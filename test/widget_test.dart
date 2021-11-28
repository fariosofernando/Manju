import 'package:manju/controllers/sms.controller.dart';
import 'package:manju/controllers/spec-sms.controller.dart';
import 'package:manju/models/mesage.model.dart';

void main() {
  print(spec());
  // print('Your Apple ID was used to sign'.length);
  // delimitandoAVisualizacaoDoTexto(content: Sms.listSms[0].bodyMesage!);
  //obtentdoAInicialParaIconSeNaoTiver(text: "apple"); // Obter a letra inicial que ira ficar no icone se nao tiver.
  // Mesage sms = Sms.listSms[0];
  // print('Enviado por: ${sms.toName}');
  // print('Data e hora: ${sms.date} ${sms.time}');
  // print('Para: ${sms.forIn}');
  // print('Titulo: ${sms.titleMesage}');
  // print('Mesagem: ${sms.bodyMesage}');
  //
  // ignore: avoid_print
  // print('QutSms: ${smsNaoLidas()}');
}

int smsNaoLidas() {
  List<Mesage> notReadSms = []; // lista de mesagens nao lidas.
  List<Mesage> yesReadSms = []; // lista de mesagens lidas.
  var x = 0;
  for (var i in Sms.listSms) {
    i.readMeasage == false ? notReadSms.add(i) : yesReadSms.add(i);
    x += 1;
  }

  int numYes = 0;
  int numNot = 0;
  for (var yes in yesReadSms) {
    numYes += 1;
  }
  print('reading: ${numYes}');
  // ignore: unused_local_variable
  for (var not in notReadSms) {
    numNot += 1;
  }
  // ignore: avoid_print
  print('not reading: ${numNot}');
  return x;
}

obtentdoAInicialParaIconSeNaoTiver({required String text}) {
  int index = 0;
  List<String> characters = [];
  for (var rune in text.runes) {
    var character = String.fromCharCode(rune);
    characters.add(character);
  }
  // ignore: avoid_print
  print(characters[index].toUpperCase());
}

// lenght = 76
delimitandoAVisualizacaoDoTexto({required String content}) {
  List<String> delimitadora = [];
  String newMinContent = '';
  for (var rune in content.runes) {
    var character = String.fromCharCode(rune);
    delimitadora.add(character);
    int limit = (delimitadora.length);
    if (limit == 70) {
      for (var delString in delimitadora) {
        newMinContent += delString;
      }
    }
  }
  print(newMinContent += '...');
}
