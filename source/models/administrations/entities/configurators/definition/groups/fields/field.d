module models.administrations.entities.configurators.definition.groups.fields.field;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupField : DOOPEntity {
  mixin(OOPEntityThis!("ADMConfiguratorDefinitionGroupField"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "dataSourceNumber": OOPAttributeString.descriptions(["en":""]),
        "fieldGroup": OOPAttributeString.descriptions(["en":""]),
        "fieldName": OOPAttributeString.descriptions(["en":""]),
        "sortOrder": OOPAttributeString.descriptions(["en":""]),
        "tableName": OOPAttributeString.descriptions(["en":""]),
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_ConfDefinitions_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_configuratordefinitiongroupfields");
  }
}
mixin(OOPEntityCalls!("ADMConfiguratorDefinitionGroupField"));

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupField);

  auto entity = ADMConfiguratorDefinitionGroupField;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}