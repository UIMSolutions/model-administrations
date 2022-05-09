module models.administrations.entities.batch.server_schedule;

@safe:
import models.administrations;

class DBatchServerScheduleEntity : DOOPEntity {
  mixin(EntityThis!("BatchServerScheduleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "EndTime": StringAttribute, // 
        "MaximumBatchThreads": StringAttribute, // 
        "AOSInstanceName": StringAttribute, // 
        "StartTime": StringAttribute, // 
        "backingTable_BatchServerConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_batchserverschedules");
  }
}
mixin(EntityCalls!("BatchServerScheduleEntity"));

version(test_library) {
  unittest {
    assert(BatchServerScheduleEntity);

  auto entity = BatchServerScheduleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}