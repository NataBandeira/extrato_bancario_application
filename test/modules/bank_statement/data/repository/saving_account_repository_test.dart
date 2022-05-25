import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';
import '../../infra/infra.dart';

class RemoteSourceMock extends Mock implements BankAccountSource {}

void main() {
  late BankAccountSource remoteSourceMock;
  late SavingAccountRepository savingAccountRepository;
  late String token;

  setUp(() {
    token = faker.jwt.valid();
    remoteSourceMock = RemoteSourceMock();
    savingAccountRepository =
        SavingAccountRepository(savingAccountSource: remoteSourceMock);
  });

  test("Should call RemoteSource with correct values ", () async {
    when(() => remoteSourceMock.getTransactions(token: token))
        .thenAnswer((_) async => remoteSavingAccountMock);

    final result = await savingAccountRepository.getAccountTransactions(token);

    expect(result, remoteSavingAccountMock);
  });
}
