module models.administrations.entities.configurators.definition.groups.summation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSummation : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupSummation"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "average": OOPAttributeString.descriptions(["en":""]),
        "averageSelected": OOPAttributeString.descriptions(["en":""]),
        "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "countAll": OOPAttributeString.descriptions(["en":""]),
        "countSelected": OOPAttributeString.descriptions(["en":""]),
        "fieldName": OOPAttributeString.descriptions(["en":""]),
        "sumAll": OOPAttributeString.descriptions(["en":""]),
        "sumSelected": OOPAttributeString.descriptions(["en":""]),
        "tableName": OOPAttributeString.descriptions(["en":""]),
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_ConfSummation_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
       ])
      .registerPath("admin_configuratordefinitiongroupsummation");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupSummation"));

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupSummation);

  auto entity = ADMConfiguratorDefinitionGroupSummation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}