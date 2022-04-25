module models.administrations.entities.configurators.definition.groups.group;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroup : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroup"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "isQueryBased": OOPAttributeString.descriptions(["en":""]),
        "queryTitle": OOPAttributeString.descriptions(["en":""]),
        "backingTable_ConfTable_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_configuratordefinitiongroups");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroup"));

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroup);

  auto entity = ADMConfiguratorDefinitionGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}