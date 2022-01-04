module models.administrations.entities.parameters;

@safe:
import models.administrations;

// 
class DADMParameters : DOOPEntity {
  this() { super();
    this.attributes([
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
    ]);
  }

  override string entityClass() { return "aDMParameters"; }
  override string entityClasses() { return "aDMParameterss"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMParameters() { return new DADMParameters; } 
auto ADMParameters(Json json) { return new DADMParameters(json); } 

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