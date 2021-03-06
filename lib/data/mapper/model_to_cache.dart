import 'package:ioasys_app/data/cache/enterprise/model/enterprise_cm.dart';
import 'package:ioasys_app/data/cache/enterprise/model/enterprise_type_cm.dart';
import 'package:ioasys_app/domain/model/enterprise/enterprise_model.dart';

extension EnterpriseModelToEnterpriseCM on EnterpriseModel {
  EnterpriseCM toEnterpriseCM() => EnterpriseCM(
        enterpriseName,
        photo,
        description,
        country,
        EnterpriseTypeCM(enterpriseType.enterpriseTypeName),
        id,
      );
}
