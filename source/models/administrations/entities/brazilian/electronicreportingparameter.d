module models.administrations.entities.brazilian.electronicreportingparameter;

@safe:
import models.administrations;

class DBrazilianElectronicReportingParametersEntity : DOOPEntity {
  mixin(EntityThis!("BrazilianElectronicReportingParametersEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "reportType": StringAttribute, //
        "erModelMappingTable": StringAttribute, //
        "modelMappingName": StringAttribute, //
        "solutionName": StringAttribute, //
        "vendorUrl": StringAttribute, //
        "backingTable_BrazilianElectronicReportingParametersRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_brazilian.electronicreportingparameters");
  }
}
mixin(EntityCalls!("BrazilianElectronicReportingParametersEntity"));

version(test_library) {
  unittest {
    assert(BrazilianElectronicReportingParametersEntity);

    auto entity = BrazilianElectronicReportingParametersEntity;/
  }
}