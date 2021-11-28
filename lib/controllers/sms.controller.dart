import 'package:manju/models/mesage.model.dart';

// Uma classe responsavel por conter a lista de mesagens que o usuário recebe.

class Sms {
  static List<Mesage> listSms = [
    Mesage(
      idMesage: 0,
      toName: 'Apple',
      forIn: 'kevennhancale@gmail.com',
      readMeasage: false,
      numberMesage: 0,
      titleMesage:
          'Your Apple ID was used to sign in to iCloud via a web browser',
      bodyMesage:
          'Dear Keven Nhancale,\nYou Apple ID (kevennhancale@gmail.com) was used to sign in to iCloud via a web browser.\nDate and Time: 25 October 2021, 11:49 am UTC\nif the iformation above looks familiar, you can desregard this email\nif you have not signed in to iCloud recently and believe someone else may have accessed your account, go to...',
      date: '25/10/21',
      time: '11:49',
    ),
    Mesage(
      idMesage: 1,
      toName: 'Example',
      forIn: 'exemple@gmail.com',
      readMeasage: true,
      numberMesage: 1,
      titleMesage: 'Exemple',
      bodyMesage:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, saepe quas? Possimus quis voluptates totam fugiat expedita, aspernatur velit corporis. Provident deleniti earum suscipit ipsa ipsum vel quia non obcaecati.',
      date: '01/01/2000',
      time: '00:00',
    ),
    Mesage(
      idMesage: 2,
      toName: 'Example2',
      forIn: 'exemple2@gmail.com',
      readMeasage: true,
      numberMesage: 2,
      titleMesage: 'Exemple2',
      bodyMesage:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, saepe quas? Possimus quis voluptates totam fugiat expedita, aspernatur velit corporis. Provident deleniti earum suscipit ipsa ipsum vel quia non obcaecati.',
      date: '01/01/2000',
      time: '00:00',
    )
  ];
}
