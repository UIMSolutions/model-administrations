module models.administrations.entities.configurators.layouts.field;

@safe:
import models.administrations;

class DConfiguratorLayoutFieldEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorLayoutFieldEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "batchId": StringAttribute, //
        "comments": StringAttribute, //
        "arrayIndex": StringAttribute, //
        "fill": StringAttribute, //
        "fieldName": StringAttribute, //
        "fieldNumber": StringAttribute, //
        "format": StringAttribute, //
        "justification": StringAttribute, //
        "layoutGroupId": StringAttribute, //
        "lineNumber": StringAttribute, //
        "methodName": StringAttribute, //
        "typeOfMethod": StringAttribute, //
        "startPosition": StringAttribute, //
        "fieldSize": StringAttribute, //
        "endPosition": StringAttribute, //
        "summationType": StringAttribute, //
        "tableName": StringAttribute, //
        "truncateField": StringAttribute, //
        "type": StringAttribute, //
        "content": StringAttribute, //
        "relationship_ConfiguratorLayoutGroupEntityRelationshipId": StringAttribute, //
        "backingTable_ConfLayoutFields_BRRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //

      ])
      .registerPath("administration_configurators.layouts.fields");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutFieldEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorLayoutFieldEntity);

    auto entity = ConfiguratorLayoutFieldEntity;
    // TODO more tests
  }
}