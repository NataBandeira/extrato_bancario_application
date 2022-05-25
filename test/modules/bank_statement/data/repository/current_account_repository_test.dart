import 'package:flutter_test/flutter_test.dart';
import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';
import 'package:mocktail/mocktail.dart';

class RemoteSourceMock extends Mock implements RemoteSource {}

void main() {
  late RemoteSource remoteSourceMock;
  late CurrentAccountRepository currentAccountRepository;

  setUp(() {
    remoteSourceMock = RemoteSourceMock();
    currentAccountRepository =
        CurrentAccountRepository(httpClient: remoteSourceMock);
  });

  test("Should call RemoteSource with correct values ", () {
    when(() => remoteSourceMock.get(url: any())).thenAnswer((invocation) => null)
  });
}
