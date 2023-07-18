import 'questions_class.dart';
// new class Quiz_brain has been created here
// This is to ensure that the the questions can be changed here instead of main.dart
class Quiz_brain
{
  // by creating this question set list, we store both the question and the answer together
  int question_number=0;
  // NOTE : by using underscore, i.e., _question_number -> we make that a private property
  List<Questionbank> QuestionSet=
  [
    Questionbank(q: 'Gilgamesh is of the Archer class', a: true),
    Questionbank(q: 'Enkidu is the arch-nemesis of Gilgamesh', a: false),
    Questionbank(q: 'Assassins are the strongest class in 1V1 combat', a: false),
    Questionbank(q: 'The three knight classes are Saber, Archer and Lancer', a: true),
    Questionbank(q: 'Lancer is the unluckiest class out of all the servants', a: true),
    Questionbank(q: 'Rin summons a servant of the Saber class in the fifth Holy grail war', a: false),
    Questionbank(q: 'Iskander defeated Gilgamesh', a: false),
    Questionbank(q: 'The irregular servant Caster summons in the fifth Holy grail war is an Assassin', a: true),
    Questionbank(q: 'Kotomine Kirei summoned Gilgamesh in the fourth Holy grail war ', a: false),
    Questionbank(q: 'Without plot armour, Shirou would\'ve lost to Gilgamesh', a: true),
  ];
  void increment_question()
  {
    if (question_number < QuestionSet.length - 1)
      {question_number++;}
  }
}