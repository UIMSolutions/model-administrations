module models.administrations.entities.configurators.definition.groups.tables.relation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupTableRelation : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupTableRelation"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "DefinitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "FixedValue": OOPAttributeString.descriptions(["en":""]),
        "RelatedField": OOPAttributeString.descriptions(["en":""]),
        "RelatedTable": OOPAttributeString.descriptions(["en":""]),
        "RelationshipType": OOPAttributeString.descriptions(["en":""]),
        "SourceFieldName": OOPAttributeString.descriptions(["en":""]),
        "SourceTableName": OOPAttributeString.descriptions(["en":""]),
        "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_ConfRelations_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_configuratordefinitiongrouptablerelation");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupTableRelation"));

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupTableRelation);

  auto entity = ADMConfiguratorDefinitionGroupTableRelation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}