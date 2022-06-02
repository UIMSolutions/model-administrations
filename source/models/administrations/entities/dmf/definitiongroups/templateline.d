module models.administrations.entities.dmf.definitiongroups.templateline;

@safe:
import models.administrations;

class DDMFDefinitionGroupTemplateLineEntity : DOOPEntity {
  mixin(EntityThis!("DMFDefinitionGroupTemplateLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "templateId": StringAttribute, //
        "entity": StringAttribute, //
        "sequence": StringAttribute, //
        "validationStatus": StringAttribute, //
        "executionUnit": StringAttribute, //
        "levelInExecutionUnit": StringAttribute, //
        "failLevelOnError": StringAttribute, //
        "failExecutionUnitOnError": StringAttribute, //
        "sysModule": StringAttribute, //
        "tags": StringAttribute, //
        "entityCategory": StringAttribute, //
        "relationship_DMFDefinitionGroupTemplateHeaderRelationshipId": StringAttribute, //
    ])
      .registerPath("administration_dmf.definitiongroups.templatelines");
  }
}
mixin(EntityCalls!("DMFDefinitionGroupTemplateLineEntity"));

version(test_model_administrations) {
  unittest {
    assert(DMFDefinitionGroupTemplateLineEntity);

    auto entity = DMFDefinitionGroupTemplateLineEntity;
    // TODO more tests
  }
}