module models.administrations.entities.currencies.isocode;

@safe:
import models.administrations;

class DCurrencyISOCodeEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyISOCodeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "isoCurrencyCode": StringAttribute, //
        "isoCurrencyCodeNum": StringAttribute, //
        "isoCurrencyName": StringAttribute, //
        "backingTable_ISOCurrencyCodeRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_currencies.isocodes");
  }
}
mixin(EntityCalls!("CurrencyISOCodeEntity"));

version(test_model_administrations) {
  unittest {
    assert(CurrencyISOCodeEntity);

    auto entity = CurrencyISOCodeEntity;
    // TODO more tests
  }
}