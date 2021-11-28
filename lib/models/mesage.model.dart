class Mesage {
  int idMesage; // id da messagem.
  String toName; // nome da pessoa que envia.
  String? titleMesage = ''; // titulo da mesagem.
  String? bodyMesage = ''; // corpo da messagem.
  String forIn; // a pessoa que irá receber a messagem.
  bool readMeasage; // se a messagem já foi lida/aberta.
  int numberMesage; // numero da messgem.
  String date;
  String time;
  Mesage({
    required this.idMesage,
    required this.toName,
    this.titleMesage,
    this.bodyMesage,
    required this.forIn,
    required this.readMeasage,
    required this.numberMesage,
    required this.date,
    required this.time,
  });
}
