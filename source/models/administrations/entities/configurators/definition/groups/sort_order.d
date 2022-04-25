module models.administrations.entities.configurators.definition.groups.sort_order;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSortOrder : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupSortOrder"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "fieldName": OOPAttributeString.descriptions(["en":""]),
        "sortingNumber": OOPAttributeString.descriptions(["en":""]),
        "sortOrder": OOPAttributeString.descriptions(["en":""]),
        "tableName": OOPAttributeString.descriptions(["en":""]),
        "relationship_ConfiguratorDefinitionGroupSortOrderEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_ConfSortOrder_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_configuratordefinitiongroupsortorders");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupSortOrder"));

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupSortOrder);

  auto entity = ADMConfiguratorDefinitionGroupSortOrder;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}