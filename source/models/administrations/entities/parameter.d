module models.administrations.entities.systems.parameter;

@safe:
import models.administrations;

class DSystemParameterEntity : DOOPEntity {
  mixin(EntityThis!("SystemParameterEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "maximumRowsOfSSRSReports": StringAttribute, // 
        "systemLanguage": StringAttribute, // 
        "increment": StringAttribute, // 
        "thaiSoftwareSequenceNumber": StringAttribute, // 
        "systemCurrencyCode": StringAttribute, // 
        "systemExchangeRateType": StringAttribute, // 
        "systemExchangeRateTypeId": UUIDAttribute, // 
        "relationship_CurrencyCodeRelationshipId": UUIDAttribute, // 
        "relationship_ExchangeRateRelationshipId": UUIDAttribute, // 
        "backingTable_SystemParametersRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_parameters");
  }
}
mixin(EntityCalls!("SystemParameterEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemParameterEntity);
  
    auto entity = SystemParameterEntity;
  }
}