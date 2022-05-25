import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';
import '../../infra/infra.dart';

class RemoteSourceMock extends Mock implements BankAccountSource {}

void main() {
  late BankAccountSource remoteSourceMock;
  late CurrentAccountRepository currentAccountRepository;
  late String token;

  setUp(() {
    token = faker.jwt.valid();
    remoteSourceMock = RemoteSourceMock();
    currentAccountRepository =
        CurrentAccountRepository(bankAccountSource: remoteSourceMock);
  });

  test("Should call RemoteSource with correct values ", () async {
    when(() => remoteSourceMock.getTransactions(token: token))
        .thenAnswer((_) async => remoteCurrentAccountMock);

    final result = await currentAccountRepository.getAccountTransactions(token);

    expect(result, remoteCurrentAccountMock);
  });
}
