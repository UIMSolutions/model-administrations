module models.administrations.entities.efdocemailaccountconfiguration;

@safe:
import models.administrations;

class DEFDocEmailAccountConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("EFDocEmailAccountConfigurationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "serverAddress": StringAttribute, //
        "port": StringAttribute, //
        "useSsl": StringAttribute, //
        "username": StringAttribute, //
        "backingTable_EFDocumentEmailAccount_BRRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_efdocemailaccount.configurations");
  }
}
mixin(EntityCalls!("EFDocEmailAccountConfigurationEntity"));

version(test_model_administrations) {
  unittest {
    assert(EFDocEmailAccountConfigurationEntity);

    auto entity = EFDocEmailAccountConfigurationEntity;
    // TODO more tests
  }
}