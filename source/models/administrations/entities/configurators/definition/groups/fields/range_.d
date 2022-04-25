module models.administrations.entities.configurators.definition.groups.fields.range_;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupFieldRange : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupFieldRange"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "fieldName": OOPAttributeString.descriptions(["en":""]),
        "range": OOPAttributeString.descriptions(["en":""]),
        "tableName": OOPAttributeString.descriptions(["en":""]),
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_ConfRange_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_configuratorDefinitiongroupfieldranges");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupFieldRange"));

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupFieldRange);

  auto entity = ADMConfiguratorDefinitionGroupFieldRange;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}