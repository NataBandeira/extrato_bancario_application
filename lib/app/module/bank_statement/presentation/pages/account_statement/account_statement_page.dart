import 'package:extrato_bancario_application/app/module/bank_statement/presentation/pages/account_statement/account_statement.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter_modular/flutter_modular.dart';
import './account_statement_controller.dart';

class AccountStatementPage extends StatefulWidget {
  const AccountStatementPage({Key? key}) : super(key: key);

  @override
  State<AccountStatementPage> createState() => _AccountStatementPageState();
}

class _AccountStatementPageState extends State<AccountStatementPage> {
  late AccountStatementController accountStatementController;

  @override
  void initState() {
    accountStatementController = Modular.get<AccountStatementController>();
    accountStatementController.fetchCurrentAccountStatements();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
