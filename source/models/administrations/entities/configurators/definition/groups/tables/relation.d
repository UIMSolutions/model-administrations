module models.administrations.entities.configurators.definition.groups.tables.relation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupTableRelation : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupTableRelation"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DefinitionGroupId": UUIDAttributeClass, // 
        "FixedValue": StringAttributeClass, // 
        "RelatedField": StringAttributeClass, // 
        "RelatedTable": StringAttributeClass, // 
        "RelationshipType": StringAttributeClass, // 
        "SourceFieldName": StringAttributeClass, // 
        "SourceTableName": StringAttributeClass, // 
        "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_ConfRelations_BRRelationshipId": UUIDAttributeClass, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
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