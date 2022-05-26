import 'package:mobx/mobx.dart';

import '../../../domain/usecases/interfaces/get_bank_statement_usecase.dart';
import '../../../data/data.dart';

part 'account_statement_controller.g.dart';

enum AccountStatementState { empty, error, loading, data }

class AccountStatementController = AccountStatementControllerBase
    with _$AccountStatementController;

abstract class AccountStatementControllerBase with Store {
  late final GetBankStatementUsecase _getSavingAccountStatement;
  late final GetBankStatementUsecase _getCurrentAccountStatement;

  AccountStatementControllerBase(
      {required GetBankStatementUsecase getSavingAccountStatement,
      required GetBankStatementUsecase getCurrentAccountStatement})
      : _getCurrentAccountStatement = getCurrentAccountStatement,
        _getSavingAccountStatement = getSavingAccountStatement;

  @observable
  BankStatementModel? currentAccountStatement;

  @observable
  AccountStatementState currentAccontState = AccountStatementState.empty;

  @action
  Future fetchCurrentAccountStatements() async {
    currentAccontState = AccountStatementState.loading;
    try {
      currentAccountStatement = await _getCurrentAccountStatement.call("");
      currentAccontState = AccountStatementState.data;
    } catch (ex) {
      currentAccontState = AccountStatementState.error;
    }
  }

  @observable
  BankStatementModel? savingAccountStatement;

  @observable
  AccountStatementState savingAccountState = AccountStatementState.empty;

  @action
  Future fetchSavingAccountStatements() async {
    savingAccountState = AccountStatementState.loading;
    try {
      savingAccountStatement = await _getSavingAccountStatement.call("");
      savingAccountState = AccountStatementState.data;
    } catch (ex) {
      savingAccountState = AccountStatementState.error;
    }
  }
}
