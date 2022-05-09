module models.administrations.entities.batch.group;

@safe:
import models.administrations;

class DBatchGroupEntity : DOOPEntity {
  mixin(EntityThis!("BatchGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([  
        "serverId": UUIDAttribute, // 
        "description": StringAttribute, // 
        "backingTable_BatchGroupRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_batchgroups");
  }
}
mixin(EntityCalls!("BatchGroupEntity"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(BatchGroupEntity);

  auto entity = BatchGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}