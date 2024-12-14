import 'dart:convert';
import 'dart:developer';

import 'package:gsheets/gsheets.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/domain/repos/settings_repository.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl extends SettingsRepository {
  SettingsRepositoryImpl();

  final String _credentials = r'''
    {
  "type": "service_account",
  "project_id": "uni-cms-444423",
  "private_key_id": "3be4e25979cc9598d4718922ba6a8f657ffdacc8",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC6mirff/75STFv\n+uQnw2Xp3jXcjjhciU+zFgkVp8kv575PrMB1YqDC0YnEmRus/DWv3Hvb35n14apz\nveMIvwS7Fq3usNcOz1K0nDHP3WRVjwtki2I0Y/2jS0C1Epy+Rh46kNrUUXFQa7Fk\njMsRmRMB/voClNaIKL3W2Jkrg2kPJARb9pnRgAplLYqPN2tmwzaD41aPV1ixcPPj\n+47KN9RBwXkWivVv+P9lWNSc5hZ3dIz7CxyRcOdi54FTY2aoDP3WZGZ4NVFJ+N4U\nRf/Q8uRAHuiT4jBZ/aWFcQuJcimbZTpUQvDykPYvuzdQQDuyrP9sWl9rEnWZ6JKf\ndoAvVOp1AgMBAAECggEABhOptEQYk1kzGzS2M+ZM3hgetGtMQhU1q30a+CHR7zWy\nkKktTlVTK20D+ctLp69B91NslC08uBFsid7j8x+3YXlcWjLXmhOd26RfieepkhC5\nvAE/BjpAYw47EfqEcLzbVKhte+8YC9ip+v6LyWus/wpk7WsX7nC3N/UvTce2hufk\nyGKDe+mYXYP4TmjvXO3sPucbFJ1Rk3mycVgbPPx9Vhq6BRxtEDLNlJgTUd0NHtT1\n6OSLOHZXh6lc6i4qM12UKHClf4bokTxV56UFbZGlTaeyHw2o+/eEgJfzTYUIkr9m\nn85etEYxtNeneuis17rc53N3Qf47XSlzGGqyNRU04QKBgQD1kwCffR8WfL3ei+ul\nQ9cB4gUdzqn39IBg9bzwMum2jTfbAkW4bDUUmPR3ECA2XAa1wSHKBmEmSOnjbryC\nAuwDrGP3Jv8iN9I4o9K6JAk42rcYh7FD/rB0LllVAGRJGMO6mg2vNNqcn/HFqI4A\nEgjdxtZc4K41ZxTujezkBX0AlQKBgQDChjvkv2xYM5qLfcOwj9yPsbBnRCch+EBh\nJaeni8rxlTk1BhfRItkVqY7tb3YFi4qKFkMmdh9/m/e66l6yzYSXcbluyWGYCdsu\nivAR4HtVDp93MiapxSA3O/1tQB19OB2w4aRMP88AZ9SuMQTB3HiDm1XstwN/37mN\nHUmaRVJqYQKBgAmOHLoX7ju7ws+D9jlJ+HW0S6qrPeXN96jOJvnZoUpfGEtHPVs9\nqpsQkIKJeBdlYUV1LFFmCiWpNKCK0H7mijRiYsldFRRJw748cZiYiltR90nXDcit\ngkQjAYrTJxPJCOSb1eh5UABEIO4l7tCF4x5t/C1E+MJPLntRvmPo6sI5AoGBAIlT\n8Nal2VxPWgyeRdfRSFndjPbqY2IU+4ZZ6glbpHN28MMhQRExM+aaJMA1DzIM+EpS\nOyfc/pG9T2AS87XxZ2jvLYUsAI0wcB9kkOVeAFPlFek1a5wxAXRdEqXdPLRZOITW\nV4JJDd9wbfJnwr8F4cKvmDKcZYkSLdGU2pBh3jQhAoGABjjXycCDUnAnwKoqDVQ2\n5ohMUj8o1vJ2Dpxu7GdRVmLoFmGUbkfLISVvNMZksFo4kq5Edun4Sg89aEXMO9yK\nzQquh0gGPo68GG5zvAKqw0arjEL8yfP9yR7iajokM8tfOK7s0BJpYTiQ6lHRKXwW\nEZcesZRrCBbkKHF/6EvpP8k=\n-----END PRIVATE KEY-----\n",
  "client_email": "uni-cms@uni-cms-444423.iam.gserviceaccount.com",
  "client_id": "110263174482239038424",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/uni-cms%40uni-cms-444423.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';
  final String _spreadSheetId = '1Jr8hUMrOB6JlmODU0H6lbQtLo9j5j1KuQQtueJO2Z3M';

  @override
  Future<void> getTranslations() async {
    final gSheets = GSheets(_credentials);
    final spreadSheet = await gSheets.spreadsheet(_spreadSheetId);
    final Worksheet userSheet = await _getWorkSheet(spreadSheet, title: 'translations');
    final rows = await userSheet.values.allRows();
    final Map<String, String> translations = {};
    for (var row in rows.skip(1)) {
      if (row.length > 1) {
        final key = row[0];
        final enUS = row[3];
        translations[key] = enUS;
      }
    }
    final jsonString = jsonEncode(translations);
    log(jsonString.toString());
  }

  Future<Worksheet> _getWorkSheet(Spreadsheet spreadsheet, {required String title}) async {
    try {
      final Worksheet userSheet = await spreadsheet.addWorksheet(title);
      return userSheet;
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }
}
