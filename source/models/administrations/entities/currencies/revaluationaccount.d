module models.administrations.entities.currencies.revaluationaccount;

@safe:
import models.administrations;

class DCurrencyRevaluationAccountEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyRevaluationAccountEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "posting": StringAttribute, //
        "currencyCode": StringAttribute, //
        "legalEntity": StringAttribute, //
        "mainAccountId": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "mainAccountIdDisplayValue": StringAttribute, //
        "ledgerName": StringAttribute, //
        "exchAdjTaxableType": StringAttribute, //
        "realizedTaxMainAccountId": StringAttribute, //
        "realizedTaxMainAccountIdDisplayValue": StringAttribute, //
        "relationship_MainAccountCombinationRelationshipId": StringAttribute, //
        "relationship_CurrencyRelationshipId": StringAttribute, //
        "backingTable_CurrencyLedgerGainLossAccountRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_currencies.revaluationaccounts");
  }
}
mixin(EntityCalls!("CurrencyRevaluationAccountEntity"));

version(test_model_administrations) {
  unittest {
    assert(CurrencyRevaluationAccountEntity);

    auto entity = CurrencyRevaluationAccountEntity;
    // TODO more tests
  }
}