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
        "MaximumRowsOfSSRSReports": StringAttributeClass, // 
        "SystemLanguage": StringAttributeClass, // 
        "Increment": StringAttributeClass, // 
        "ThaiSoftwareSequenceNumber": StringAttributeClass, // 
        "SystemCurrencyCode": StringAttributeClass, // 
        "SystemExchangeRateType": StringAttributeClass, // 
        "SystemExchangeRateTypeId": UUIDAttributeClass, // 
        "Relationship_CurrencyCodeRelationshipId": UUIDAttributeClass, // 
        "Relationship_ExchangeRateRelationshipId": UUIDAttributeClass, // 
        "backingTable_SystemParametersRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_parameters");
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