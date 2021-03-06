import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ioasys_app/domain/model/user/user_tokens.dart';
import 'package:ioasys_app/domain/use_case/get_enterprise_use_case.dart';
import 'package:ioasys_app/presentation/enterprise/enterprise_details/async_snapshot_response_result_view.dart';
import 'package:ioasys_app/presentation/enterprise/enterprise_details/enterprise.dart';
import 'package:ioasys_app/presentation/enterprise/enterprise_details/result_bloc.dart';
import 'package:ioasys_app/presentation/enterprise/enterprise_details/result_view_state.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    required this.enterpriseId,
    required this.userTokens,
    required this.resultBloc,
    Key? key,
  }) : super(key: key);
  final int enterpriseId;
  final UserTokens userTokens;
  final ResultBloc resultBloc;

  static Widget create(
          BuildContext context, int enterpriseId, UserTokens userTokens) =>
      ProxyProvider<GetEnterpriseUseCase, ResultBloc>(
        update: (context, getEnterpriseUseCase, bloc) =>
            bloc ?? ResultBloc(getEnterpriseUseCase),
        dispose: (context, bloc) => bloc.dispose(),
        child: Consumer<ResultBloc>(
          builder: (context, bloc, _) => ResultScreen(
            enterpriseId: enterpriseId,
            userTokens: userTokens,
            resultBloc: bloc,
          ),
        ),
      );

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late StreamSubscription _viewStateStreamSubscription;

  @override
  void initState() {
    super.initState();
    _viewStateStreamSubscription = widget.resultBloc
        .getEnterprise(widget.enterpriseId, widget.userTokens.accessToken,
            widget.userTokens.uid, widget.userTokens.client)
        .listen((viewState) {
      widget.resultBloc.resultViewStateInput.add(viewState);
    });
  }

  @override
  void dispose() {
    widget.resultBloc.dispose();
    _viewStateStreamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<ResultViewState>(
        stream: widget.resultBloc.resultViewState,
        initialData: LoadingState(),
        builder: (context, snapshot) => AsyncSnapshotResponseResultView<
            LoadingState, GenericErrorState, NetworkErrorState, SuccessState>(
          snapshot: snapshot,
          successWidgetBuilder: (context, successState) {
            final enterprise = successState.enterprise;
            return Enterprise(
              enterprise: enterprise,
            );
          },
        ),
      );
}
