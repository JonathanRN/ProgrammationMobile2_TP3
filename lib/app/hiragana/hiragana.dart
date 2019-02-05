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

class Question {
  String question;
  List<String> answers;

  Question({question, answers})
      : this.question = question, this.answers = answers;
}

class Hiragana {


  Question getRandomQuestion() {
    
  }
}