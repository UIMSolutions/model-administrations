module models.administrations.entities.parameters;

@safe:
import models.administrations;

// 
class DADMParameters : DOOPEntity {
  mixin(EntityThis!("ADMParameters"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "MaximumRowsOfSSRSReports": OOPAttributeString.descriptions(["en":""]),
        "SystemLanguage": OOPAttributeString.descriptions(["en":""]),
        "Increment": OOPAttributeString.descriptions(["en":""]),
        "ThaiSoftwareSequenceNumber": OOPAttributeString.descriptions(["en":""]),
        "SystemCurrencyCode": OOPAttributeString.descriptions(["en":""]),
        "SystemExchangeRateType": OOPAttributeString.descriptions(["en":""]),
        "SystemExchangeRateTypeId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_CurrencyCodeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_ExchangeRateRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_SystemParametersRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_parameters");
  }
}
mixin(EntityCalls!("ADMParameters"));

unittest {
  version(uim_entities) {
    assert(ADMParameters);
  
  auto entity = ADMParameters;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}