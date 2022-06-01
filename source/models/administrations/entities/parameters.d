module models.administrations.entities.parameters;

@safe:
import models.administrations;

// 
class DADMParameters : DOOPEntity {
  mixin(EntityThis!("ADMParameters"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "MaximumRowsOfSSRSReports": StringAttribute, // 
        "SystemLanguage": StringAttribute, // 
        "Increment": StringAttribute, // 
        "ThaiSoftwareSequenceNumber": StringAttribute, // 
        "SystemCurrencyCode": StringAttribute, // 
        "SystemExchangeRateType": StringAttribute, // 
        "SystemExchangeRateTypeId": UUIDAttribute, // 
        "Relationship_CurrencyCodeRelationshipId": UUIDAttribute, // 
        "Relationship_ExchangeRateRelationshipId": UUIDAttribute, // 
        "backingTable_SystemParametersRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_parameters");
  }
}
mixin(EntityCalls!("ADMParameters"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMParameters);
  
  auto entity = ADMParameters;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}