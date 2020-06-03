part of music_notes;

enum Accidentals { DobleSostingut, Sostingut, Bemoll, DobleBemoll }

extension AccidentalsValues on Accidentals {
  static const accidentalValues = {
    Accidentals.DobleSostingut: 2,
    Accidentals.Sostingut: 1,
    Accidentals.Bemoll: -1,
    Accidentals.DobleBemoll: -2,
  };

  static Accidentals accidental(int value) => accidentalValues.keys
      .firstWhere((accidental) => value == accidentalValues[accidental]);

  int get value => accidentalValues[this];
}