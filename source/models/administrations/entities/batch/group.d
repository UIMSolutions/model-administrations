module models.administrations.entities.batch.group;

@safe:
import models.administrations;

class DADMBatchGroup : DOOPEntity {
  mixin(EntityThis!("ADMBatchGroup"));

  override void initialize() {
    super.initialize;

    this
      .addValues([  
        "serverId": UUIDAttributeClass, // 
        "backingTable_BatchGroupRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_batchgroups");
  }
}
mixin(EntityCalls!("ADMBatchGroup"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMBatchGroup);

  auto entity = ADMBatchGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}