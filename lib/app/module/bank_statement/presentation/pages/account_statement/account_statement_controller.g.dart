// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_statement_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AccountStatementController on AccountStatementControllerBase, Store {
  late final _$currentAccountStatementAtom = Atom(
      name: 'AccountStatementControllerBase.currentAccountStatement',
      context: context);

  @override
  BankStatementModel? get currentAccountStatement {
    _$currentAccountStatementAtom.reportRead();
    return super.currentAccountStatement;
  }

  @override
  set currentAccountStatement(BankStatementModel? value) {
    _$currentAccountStatementAtom
        .reportWrite(value, super.currentAccountStatement, () {
      super.currentAccountStatement = value;
    });
  }

  late final _$currentAccontStateAtom = Atom(
      name: 'AccountStatementControllerBase.currentAccontState',
      context: context);

  @override
  AccountStatementState get currentAccontState {
    _$currentAccontStateAtom.reportRead();
    return super.currentAccontState;
  }

  @override
  set currentAccontState(AccountStatementState value) {
    _$currentAccontStateAtom.reportWrite(value, super.currentAccontState, () {
      super.currentAccontState = value;
    });
  }

  late final _$savingAccountStatementAtom = Atom(
      name: 'AccountStatementControllerBase.savingAccountStatement',
      context: context);

  @override
  BankStatementModel? get savingAccountStatement {
    _$savingAccountStatementAtom.reportRead();
    return super.savingAccountStatement;
  }

  @override
  set savingAccountStatement(BankStatementModel? value) {
    _$savingAccountStatementAtom
        .reportWrite(value, super.savingAccountStatement, () {
      super.savingAccountStatement = value;
    });
  }

  late final _$savingAccountStateAtom = Atom(
      name: 'AccountStatementControllerBase.savingAccountState',
      context: context);

  @override
  AccountStatementState get savingAccountState {
    _$savingAccountStateAtom.reportRead();
    return super.savingAccountState;
  }

  @override
  set savingAccountState(AccountStatementState value) {
    _$savingAccountStateAtom.reportWrite(value, super.savingAccountState, () {
      super.savingAccountState = value;
    });
  }

  late final _$fetchCurrentAccountStatementsAsyncAction = AsyncAction(
      'AccountStatementControllerBase.fetchCurrentAccountStatements',
      context: context);

  @override
  Future<dynamic> fetchCurrentAccountStatements() {
    return _$fetchCurrentAccountStatementsAsyncAction
        .run(() => super.fetchCurrentAccountStatements());
  }

  late final _$fetchSavingAccountStatementsAsyncAction = AsyncAction(
      'AccountStatementControllerBase.fetchSavingAccountStatements',
      context: context);

  @override
  Future<dynamic> fetchSavingAccountStatements() {
    return _$fetchSavingAccountStatementsAsyncAction
        .run(() => super.fetchSavingAccountStatements());
  }

  @override
  String toString() {
    return '''
currentAccountStatement: ${currentAccountStatement},
currentAccontState: ${currentAccontState},
savingAccountStatement: ${savingAccountStatement},
savingAccountState: ${savingAccountState}
    ''';
  }
}
