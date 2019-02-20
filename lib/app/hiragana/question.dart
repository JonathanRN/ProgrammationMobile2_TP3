import 'package:tp3/app/routes/practice_route.dart';

const Hiraganas = {
  /* - */
  'ん': 'n',
  'あ': 'a',
  'い': 'i',
  'う': 'u',
  'え': 'e',
  'お': 'o',
  /* k */
  'か': 'ka',
  'き': 'ki',
  'く': 'ku',
  'け': 'ke',
  'こ': 'ko',
  /* s */
  'さ': 'sa',
  'し': 'shi',
  'す': 'su',
  'せ': 'se',
  'そ': 'so',
  /* t */
  'た': 'ta',
  'ち': 'chi',
  'つ': 'tsu',
  'て': 'te',
  'と': 'to',
  /* n */
  'な': 'na',
  'に': 'ni',
  'ぬ': 'nu',
  'ね': 'ne',
  'の': 'no',
  /* h */
  'は': 'ha',
  'ひ': 'hi',
  'ふ': 'fu',
  'へ': 'he',
  'ほ': 'ho',
  /* m */
  'ま': 'ma',
  'み': 'mi',
  'む': 'mu',
  'め': 'me',
  'も': 'mo',
  /* r */
  'ら': 'ra',
  'り': 'ri',
  'る': 'ru',
  'れ': 're',
  'ろ': 'ro',
  /* y */
  'や': 'ya',
  'ゆ': 'yu',
  'よ': 'yo',
  /* w */
  'わ': 'wa',
  'を': 'wo',
};
const AMOUNT_OF_POSSIBLE_ANSWERS = 3;

class Question {
  //BEN_CORRECTION : Private.
  String hiragana;
  //BEN_CORRECTION : Private.
  List<String> possibleAnswers = List<String>();
  //BEN_CORRECTION : Private.
  PracticeRouteState practiceRoute;

  Question(practiceRoute) {
    this.practiceRoute = practiceRoute;
    createRandomQuestion();
  }

  void createRandomQuestion() {
    possibleAnswers.clear();

    var keys = Hiraganas.keys.toList()..shuffle();
    hiragana = keys[0];
    possibleAnswers.add(getAnswer());

    var values = Hiraganas.values.toList()..shuffle();
    for (var i = 0; i < AMOUNT_OF_POSSIBLE_ANSWERS - 1; i++) {
      possibleAnswers.add(values[i]);
    }

    possibleAnswers.shuffle();

    practiceRoute.refresh();
  }

  String getAnswer() {
    return Hiraganas[hiragana];
  }
}
