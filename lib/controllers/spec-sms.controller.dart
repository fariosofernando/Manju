/// Especificações da classe "Sms".
/// Controlar a quantidade das mensagens.
/// Controlar mensagens não lidas.
/// Controlar mensagens lidas.

import 'package:manju/controllers/sms.controller.dart';
import 'package:manju/models/mesage.model.dart';

Map spec() {
  // lista de mesagens nao lidas.
  List<Mesage> notReadSms = [];

  // lista de mesagens lidas.
  List<Mesage> yesReadSms = [];

  // Variavel da quantidade total das mensagens.
  var x = 0;

  // Verificando se a sms foi lida ou não.
  // Depois dessa verificação ele separa em lidas e não lidas.
  // No processo o algoritimo calcula a quantidade total das mensagens.
  for (var i in Sms.listSms) {
    i.readMeasage == false ? notReadSms.add(i) : yesReadSms.add(i);
    x += 1;
  }

  int numYes = 0;
  int numNot = 0;

  // Altalizando qut de sms lidas.
  // ignore: unused_local_variable
  for (var yes in yesReadSms) {
    numYes += 1;
  }

  // Altalizando qut de sms não lidas.
  // ignore: unused_local_variable
  for (var not in notReadSms) {
    numNot += 1;
  }

  // Organizando tudo feito pelo algorito em um mapa devididos em lidos, não lidos e quantidade total.
  Map<String, int> specinfo = {};
  specinfo['reads'] = numYes;
  specinfo['notread'] = numNot;
  specinfo['qut'] = x;

  // Por fim, o algoritimo retorna o mapa com todas informações atualizadas.
  return specinfo;
}
