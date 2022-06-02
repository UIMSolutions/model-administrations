module models.administrations.entities.currencies.currency;

@safe:
import models.administrations;

class DCurrencyEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "currencyCode": StringAttribute, //
        "generalRoundingRule": StringAttribute, //
        "currencyGender": StringAttribute, //
        "name": StringAttribute, //
        "referenceCurrencyForTriangulation": StringAttribute, //
        "roundingRuleFixedAssetDepreciation": StringAttribute, //
        "roundingMethodFixedAssetDepreciation": StringAttribute, //
        "roundingMethodPrices": StringAttribute, //
        "roundingMethodPurchaseOrders": StringAttribute, //
        "roundingMethodSalesOrders": StringAttribute, //
        "roundingRulePrices": StringAttribute, //
        "roundingRulePurchaseOrders": StringAttribute, //
        "roundingRuleSalesOrders": StringAttribute, //
        "symbol": StringAttribute, //
        "backingTable_CurrencyRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_currencies");
  }
}
mixin(EntityCalls!("CurrencyEntity"));

version(test_model_administrations) {
  unittest {
    assert(CurrencyEntity);

    auto entity = CurrencyEntity;
    // TODO more tests
  }
}