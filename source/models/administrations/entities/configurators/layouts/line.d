module models.administrations.entities.configurators.layouts.line;

@safe:
import models.administrations;

class DConfiguratorLayoutLineEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorLayoutLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "batchId": StringAttribute, //
        "batchRecordType": StringAttribute, //
        "recordSize": StringAttribute, //
        "recordName": StringAttribute, //
        "hide": StringAttribute, //
        "layoutGroupId": StringAttribute, //
        "lineNumber": StringAttribute, //
        "recordType": StringAttribute, //
        "segment": StringAttribute, //
        "relationship_ConfiguratorLayoutGroupEntityRelationshipId": StringAttribute, //
        "backingTable_ConfLayoutLines_BRRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("administration_configurators.layouts.lines");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutLineEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorLayoutLineEntity);

    auto entity = ConfiguratorLayoutLineEntity;
    // TODO more tests
  }
}