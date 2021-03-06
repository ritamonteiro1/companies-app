// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt_BR';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alertDialogButton": MessageLookupByLibrary.simpleMessage("Ok"),
        "loadingAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Carregando..."),
        "loginScreenButtonText": MessageLookupByLibrary.simpleMessage("Entrar"),
        "loginScreenEmptyFormText":
            MessageLookupByLibrary.simpleMessage("Preencha o campo"),
        "loginScreenFormEmailLabelText":
            MessageLookupByLibrary.simpleMessage("E-mail"),
        "loginScreenFormInvalidEmail": MessageLookupByLibrary.simpleMessage(
            "Digite um email válido. Ex: abc@abc.com.br"),
        "loginScreenFormInvalidPassword": MessageLookupByLibrary.simpleMessage(
            "A senha deve conter pelo menos 8 caracteres"),
        "loginScreenFormPasswordLabelText":
            MessageLookupByLibrary.simpleMessage("Senha"),
        "loginScreenIntroductionText": MessageLookupByLibrary.simpleMessage(
            "Lorem ipsum dolor sit amet, contetur adipiscing elit. Nunc accumsan."),
        "loginScreenWelcomeText":
            MessageLookupByLibrary.simpleMessage("Bem vindo ao empresas"),
        "mainScreenHintTextAppBar":
            MessageLookupByLibrary.simpleMessage("Pesquisar"),
        "mainScreenInitialStateMessage": MessageLookupByLibrary.simpleMessage(
            "Clique na busca para iniciar"),
        "mainScreenNoEnterpriseResult": MessageLookupByLibrary.simpleMessage(
            "Nenhuma empresa foi encontrada para a busca realizada."),
        "messageAlertTitle": MessageLookupByLibrary.simpleMessage("Ops"),
        "messageGenericError": MessageLookupByLibrary.simpleMessage(
            "Ocorreu um erro. Tente novamente"),
        "messageNetworkError": MessageLookupByLibrary.simpleMessage(
            "Falha na conexão. Tente novamente"),
        "messageUnauthorizedAuth": MessageLookupByLibrary.simpleMessage(
            "Credenciais inválidas. Tente novamente")
      };
}
