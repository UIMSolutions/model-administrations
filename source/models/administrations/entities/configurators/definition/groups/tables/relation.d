module models.administrations.entities.configurators.definition.groups.tables.relation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupTableRelation : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupTableRelation"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DefinitionGroupId": UUIDAttribute, // 
        "FixedValue": StringAttribute, // 
        "RelatedField": StringAttribute, // 
        "RelatedTable": StringAttribute, // 
        "RelationshipType": StringAttribute, // 
        "SourceFieldName": StringAttribute, // 
        "SourceTableName": StringAttribute, // 
        "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfRelations_BRRelationshipId": UUIDAttribute, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_configuratordefinitiongrouptablerelation");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupTableRelation"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroupTableRelation);

  auto entity = ADMConfiguratorDefinitionGroupTableRelation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}