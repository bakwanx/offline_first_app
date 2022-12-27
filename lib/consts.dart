const String DATABASE_NAME = 'offline_first.db';

const String CREATE_POKEMON_TABLE = '''

    create table pokemon (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      url TEXT
    )

''';

const String CREATE_BCA_TABLE = '''

    create table cabang_bca (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      kota TEXT,
      status_cabang TEXT,
      kcu TEXT,
      nama_cabang TEXT,
      kode_cabang TEXT,
      wilayah_asuransi INTEGER,
      kanwil INTEGER
    )

''';

